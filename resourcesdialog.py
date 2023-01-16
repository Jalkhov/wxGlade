import os
import xml.dom.minidom
from pprint import pprint

import wx

import common
from res.resources_ui import wxGladeResourcesUI


class wxGladeResources(wxGladeResourcesUI):
    def __init__(self, parent):
        wxGladeResourcesUI.__init__(self, None, -1, "")
        self.cur_dir = parent.cur_dir
        self.dom = self.get_dom_string()
        self.list_wrc_files()
        # self.ensure_save()
        # self.get_includes()

    @staticmethod
    def ensure_save():
        """
        Force save the current file for prevent data missing
        :return:
        """

    def update_dom_attr(self):
        self.dom = self.get_dom_string()

    @staticmethod
    def get_dom_string():
        """
        Due to some problems handling the DOM in multiple instances
        this will be used for store the DOM as a string
        :return:
        """
        return xml.dom.minidom.parse(common.root.filename).toprettyxml(indent='    ', encoding='UTF-8')

    @staticmethod
    def safe_list_get(lst, idx, default):
        try:
            return lst[idx]
        except IndexError:
            return default

    def list_wrc_files(self):
        wxlist = self.resources
        wxlist.Clear()

        document = xml.dom.minidom.parseString(self.dom)
        resources = document.getElementsByTagName('resources')

        if resources:
            resources_node = resources[0]
            resources_childs = resources_node.childNodes

            items = []

            for child in resources_childs:
                if child.nodeType != child.TEXT_NODE:
                    location = child.getAttribute('location')
                    fn = os.path.basename(location)
                    items.append(fn)

            wxlist.InsertItems(items, 0)

    def insert(self, include, existing_includes):
        include = os.path.basename(include)

        tmp_buffer = []
        common.root.write(tmp_buffer)

        # Delete last element (</application> tag)
        tmp_buffer.pop(len(tmp_buffer) - 1)

        # Build resources tree
        data = ['    <resources>\n',
                include]

        # Add existing includes
        [data.append(x) for x in existing_includes]

        # Add resources tree
        [tmp_buffer.append(x) for x in data]

        # Close resources tag
        tmp_buffer.append('    </resources>\n')

        # Restore close tag
        tmp_buffer.append('</application>')

        common.save_file(common.root.filename, tmp_buffer, 'wxg')

        self.update_dom_attr()

        self.list_wrc_files()

    def create_wrc_file(self, _event):
        fn = wx.FileSelector(_("New resources file"),
                             wildcard="wxGlade resources file (*.wrc)|*.wrc|XML files (*.xml)|*.xml|All files|*",
                             flags=wx.FD_SAVE | wx.FD_OVERWRITE_PROMPT,
                             default_path=self.cur_dir)
        if not fn:
            return

        # check for file extension and add default extension if missing
        ext = os.path.splitext(fn)[1].lower()
        if not ext:
            fn = "%s.wrc" % fn

        new_include = self.include(fn)
        includes = self.get_includes()

        with open(fn, 'w') as empty_wrc:
            empty_wrc.write('<WRC>\n    </wresource>\n</WRC>')

        self.insert(new_include, includes)

    @staticmethod
    def include(location):
        return '        <include location="%s" />\n' % location

    def get_includes(self):
        document = xml.dom.minidom.parseString(self.dom)
        resources = document.getElementsByTagName('resources')

        includes = []

        if resources:
            childs = resources[0].childNodes
            for child in childs:
                if child.nodeType != child.TEXT_NODE:
                    location = child.getAttribute('location')
                    # Maybe place relative path to wxg file
                    fn = os.path.basename(location)
                    includes.append(self.include(fn))
        else:
            return []  # For prevent NoneType not iterable

        return includes

    def list2dom(self):
        pass

    @staticmethod
    def dom2list(document) -> list:
        output = []
        pretty_xml = document.toprettyxml(indent='    ', encoding='UTF-8')
        for line in pretty_xml.splitlines():
            if not line.strip():
                continue

            output.append(line.decode('utf-8') + '\n')

        return output

