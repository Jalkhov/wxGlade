#!/usr/bin/perl -w -- 
#
# generated by wxGlade
#
# To get wxPerl visit http://www.wxperl.it
#

use Wx qw[:allclasses];
use strict;

# begin wxGlade: dependencies
use Wx::ArtProvider qw/:artid :clientid/;
# end wxGlade

# begin wxGlade: extracode
# end wxGlade

package All_Widgets_Frame;

use Wx qw[:everything];
use base qw(Wx::Frame);
use strict;

use Wx::Locale gettext => '_T';
# begin wxGlade: dependencies
use Wx::ArtProvider qw/:artid :clientid/;
# end wxGlade

sub new {
    my( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
    $parent = undef              unless defined $parent;
    $id     = -1                 unless defined $id;
    $title  = ""                 unless defined $title;
    $pos    = wxDefaultPosition  unless defined $pos;
    $size   = wxDefaultSize      unless defined $size;
    $name   = ""                 unless defined $name;

    # begin wxGlade: All_Widgets_Frame::new
    $style = wxDEFAULT_FRAME_STYLE
        unless defined $style;

    $self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    $self->SetSize(Wx::Size->new(800, 417));
    $self->SetTitle(_T("All Widgets"));
    my $icon = &Wx::wxNullIcon;
    $icon->CopyFromBitmap(Wx::ArtProvider::GetBitmap(wxART_TIP, wxART_OTHER, Wx::Size->new(32, 32)));
    $self->SetIcon($icon);
    
    

    # Menu Bar

    $self->{All_Widgets_menubar} = Wx::MenuBar->new();
    use constant mn_IDUnix => Wx::NewId();
    use constant mn_IDWindows => Wx::NewId();
    my $wxglade_tmp_menu;
    $wxglade_tmp_menu = Wx::Menu->new();
    $wxglade_tmp_menu->Append(wxID_OPEN, _T("&Open"), _T("Open an existing document"));
    $wxglade_tmp_menu->Append(wxID_CLOSE, _T("&Close file"), _T("Close current document"));
    $wxglade_tmp_menu->AppendSeparator();
    $wxglade_tmp_menu->Append(wxID_EXIT, _T("E&xit"), _T("Finish program"));
    $self->{All_Widgets_menubar}->Append($wxglade_tmp_menu, _T("&File"));
    $wxglade_tmp_menu = Wx::Menu->new();
    $self->{mn_Unix} = $wxglade_tmp_menu->Append(mn_IDUnix, _T("Unix"), _T("Use Unix line endings"), 2);
    $self->{mn_Windows} = $wxglade_tmp_menu->Append(mn_IDWindows, _T("Windows"), _T("Use Windows line endings"), 2);
    $wxglade_tmp_menu->AppendSeparator();
    $self->{mn_RemoveTabs} = $wxglade_tmp_menu->Append(wxID_ANY, _T("Remove Tabs"), _T("Remove all leading tabs"), 1);
    $self->{All_Widgets_menubar}->Append($wxglade_tmp_menu, _T("&Edit"));
    $wxglade_tmp_menu = Wx::Menu->new();
    $wxglade_tmp_menu->Append(wxID_HELP, _T("Manual"), _T("Show the application manual"));
    $wxglade_tmp_menu->AppendSeparator();
    $wxglade_tmp_menu->Append(wxID_ABOUT, _T("About"), _T("Show the About dialog"));
    $self->{All_Widgets_menubar}->Append($wxglade_tmp_menu, _T("&Help"));
    $self->SetMenuBar($self->{All_Widgets_menubar});
    
    # Menu Bar end

    
    $self->{All_Widgets_statusbar} = $self->CreateStatusBar(1, wxST_SIZEGRIP);
    $self->{All_Widgets_statusbar}->SetStatusWidths(-1);
    
    # statusbar fields
    my( @All_Widgets_statusbar_fields ) = (
        _T("All Widgets statusbar"),
    );
    
    if( @All_Widgets_statusbar_fields ) {
        $self->{All_Widgets_statusbar}->SetStatusText($All_Widgets_statusbar_fields[$_], $_)
        for 0 .. $#All_Widgets_statusbar_fields ;
    }
    
    
    # Tool Bar
    $self->{All_Widgets_toolbar} = Wx::ToolBar->new($self, -1);
    $self->{All_Widgets_toolbar}->AddTool(wxID_UP, _T("UpDown"), Wx::ArtProvider::GetBitmap(wxART_GO_UP, wxART_OTHER, Wx::Size->new(32, 32)), Wx::ArtProvider::GetBitmap(wxART_GO_DOWN, wxART_OTHER, Wx::Size->new(32, 32)), wxITEM_CHECK, _T("Up or Down"), _T("Up or Down"));
    $self->{All_Widgets_toolbar}->AddTool(wxID_OPEN, _T("Open"), Wx::Bitmap->new(32, 32), wxNullBitmap, wxITEM_NORMAL, _T("Open a new file"), _T("Open a new file"));
    $self->SetToolBar($self->{All_Widgets_toolbar});
    $self->{All_Widgets_toolbar}->Realize();
    # Tool Bar end
    
    $self->{sizer_1} = Wx::FlexGridSizer->new(3, 1, 0, 0);
    
    $self->{notebook_1} = Wx::Notebook->new($self, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxNB_BOTTOM);
    $self->{sizer_1}->Add($self->{notebook_1}, 1, wxEXPAND, 0);
    
    $self->{notebook_1_wxBitmapButton} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxBitmapButton}, _T("wxBitmapButton"));
    
    $self->{sizer_13} = Wx::FlexGridSizer->new(2, 2, 0, 0);
    
    $self->{bitmap_button_icon1} = Wx::BitmapButton->new($self->{notebook_1_wxBitmapButton}, wxID_ANY, Wx::Bitmap->new("icon.xpm", wxBITMAP_TYPE_ANY));
    $self->{bitmap_button_icon1}->SetSize($self->{bitmap_button_icon1}->GetBestSize());
    $self->{bitmap_button_icon1}->SetDefault();
    $self->{sizer_13}->Add($self->{bitmap_button_icon1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{bitmap_button_empty1} = Wx::BitmapButton->new($self->{notebook_1_wxBitmapButton}, wxID_ANY, Wx::Bitmap->new(10, 10));
    $self->{bitmap_button_empty1}->SetSize($self->{bitmap_button_empty1}->GetBestSize());
    $self->{bitmap_button_empty1}->SetDefault();
    $self->{sizer_13}->Add($self->{bitmap_button_empty1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{bitmap_button_icon2} = Wx::BitmapButton->new($self->{notebook_1_wxBitmapButton}, wxID_ANY, Wx::Bitmap->new("icon.xpm", wxBITMAP_TYPE_ANY), wxDefaultPosition, wxDefaultSize, wxBORDER_NONE|wxBU_BOTTOM);
    $self->{bitmap_button_icon2}->SetBitmapDisabled(Wx::Bitmap->new(32, 32));
    $self->{bitmap_button_icon2}->SetSize($self->{bitmap_button_icon2}->GetBestSize());
    $self->{bitmap_button_icon2}->SetDefault();
    $self->{sizer_13}->Add($self->{bitmap_button_icon2}, 1, wxALL|wxEXPAND, 5);
    
    $self->{bitmap_button_art} = Wx::BitmapButton->new($self->{notebook_1_wxBitmapButton}, wxID_ANY, Wx::ArtProvider::GetBitmap(wxART_GO_UP, wxART_OTHER, Wx::Size->new(32, 32)), wxDefaultPosition, wxDefaultSize, wxBORDER_NONE|wxBU_BOTTOM);
    $self->{bitmap_button_art}->SetSize($self->{bitmap_button_art}->GetBestSize());
    $self->{bitmap_button_art}->SetDefault();
    $self->{sizer_13}->Add($self->{bitmap_button_art}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxButton} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxButton}, _T("wxButton"));
    
    $self->{sizer_28} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{button_3} = Wx::Button->new($self->{notebook_1_wxButton}, wxID_BOLD, "");
    $self->{sizer_28}->Add($self->{button_3}, 0, wxALL, 5);
    
    $self->{notebook_1_wxCalendarCtrl} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxCalendarCtrl}, _T("wxCalendarCtrl"));
    
    $self->{sizer_12} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{calendar_ctrl_1} = Wx::CalendarCtrl->new($self->{notebook_1_wxCalendarCtrl}, wxID_ANY, Wx::DateTime->new, wxDefaultPosition, wxDefaultSize, wxCAL_MONDAY_FIRST|wxCAL_SEQUENTIAL_MONTH_SELECTION|wxCAL_SHOW_SURROUNDING_WEEKS);
    $self->{sizer_12}->Add($self->{calendar_ctrl_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxCheckBox} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxCheckBox}, _T("wxCheckBox"));
    
    $self->{sizer_21} = Wx::GridSizer->new(2, 3, 0, 0);
    
    $self->{checkbox_1} = Wx::CheckBox->new($self->{notebook_1_wxCheckBox}, wxID_ANY, _T("one (unchecked)"));
    $self->{sizer_21}->Add($self->{checkbox_1}, 0, wxEXPAND, 0);
    
    $self->{checkbox_2} = Wx::CheckBox->new($self->{notebook_1_wxCheckBox}, wxID_ANY, _T("two (checked)"));
    $self->{checkbox_2}->SetValue(1);
    $self->{sizer_21}->Add($self->{checkbox_2}, 0, wxEXPAND, 0);
    
    $self->{checkbox_3} = Wx::CheckBox->new($self->{notebook_1_wxCheckBox}, wxID_ANY, _T("three"), wxDefaultPosition, wxDefaultSize, wxCHK_2STATE);
    $self->{sizer_21}->Add($self->{checkbox_3}, 0, wxEXPAND, 0);
    
    $self->{checkbox_4} = Wx::CheckBox->new($self->{notebook_1_wxCheckBox}, wxID_ANY, _T("four (unchecked)"), wxDefaultPosition, wxDefaultSize, wxCHK_3STATE);
    $self->{checkbox_4}->Set3StateValue(wxCHK_UNCHECKED);
    $self->{sizer_21}->Add($self->{checkbox_4}, 0, wxEXPAND, 0);
    
    $self->{checkbox_5} = Wx::CheckBox->new($self->{notebook_1_wxCheckBox}, wxID_ANY, _T("five (checked)"), wxDefaultPosition, wxDefaultSize, wxCHK_3STATE|wxCHK_ALLOW_3RD_STATE_FOR_USER);
    $self->{checkbox_5}->Set3StateValue(wxCHK_CHECKED);
    $self->{sizer_21}->Add($self->{checkbox_5}, 0, wxEXPAND, 0);
    
    $self->{checkbox_6} = Wx::CheckBox->new($self->{notebook_1_wxCheckBox}, wxID_ANY, _T("six (undetermined)"), wxDefaultPosition, wxDefaultSize, wxCHK_3STATE|wxCHK_ALLOW_3RD_STATE_FOR_USER);
    $self->{checkbox_6}->Set3StateValue(wxCHK_UNDETERMINED);
    $self->{sizer_21}->Add($self->{checkbox_6}, 0, wxEXPAND, 0);
    
    $self->{notebook_1_wxCheckListBox} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxCheckListBox}, _T("wxCheckListBox"));
    
    $self->{sizer_26} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{check_list_box_1} = Wx::CheckListBox->new($self->{notebook_1_wxCheckListBox}, wxID_ANY, wxDefaultPosition, wxDefaultSize, [_T("one"), _T("two"), _T("three"), _T("four")], );
    $self->{check_list_box_1}->SetSelection(2);
    $self->{sizer_26}->Add($self->{check_list_box_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxChoice} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxChoice}, _T("wxChoice"));
    
    $self->{sizer_5} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{choice_empty} = Wx::Choice->new($self->{notebook_1_wxChoice}, wxID_ANY, wxDefaultPosition, wxDefaultSize, [], );
    $self->{sizer_5}->Add($self->{choice_empty}, 1, wxALL, 5);
    
    $self->{choice_filled} = Wx::Choice->new($self->{notebook_1_wxChoice}, wxID_ANY, wxDefaultPosition, wxDefaultSize, [_T("Item 1"), _T("Item 2 (pre-selected)")], );
    $self->{choice_filled}->SetSelection(1);
    $self->{sizer_5}->Add($self->{choice_filled}, 1, wxALL, 5);
    
    $self->{notebook_1_wxComboBox} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxComboBox}, _T("wxComboBox"));
    
    $self->{sizer_6} = Wx::BoxSizer->new(wxVERTICAL);
    
    $self->{sizer_7} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_6}->Add($self->{sizer_7}, 1, wxEXPAND, 0);
    
    $self->{combo_box_empty} = Wx::ComboBox->new($self->{notebook_1_wxComboBox}, wxID_ANY, "", wxDefaultPosition, wxDefaultSize, [], 0);
    $self->{sizer_7}->Add($self->{combo_box_empty}, 1, wxALL, 5);
    
    $self->{combo_box_filled} = Wx::ComboBox->new($self->{notebook_1_wxComboBox}, wxID_ANY, "", wxDefaultPosition, wxDefaultSize, [_T("Item 1 (pre-selected)"), _T("Item 2")], 0);
    $self->{combo_box_filled}->SetSelection(0);
    $self->{sizer_7}->Add($self->{combo_box_filled}, 1, wxALL, 5);
    
    $self->{notebook_1_wxDatePickerCtrl} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxDatePickerCtrl}, _T("wxDatePickerCtrl"));
    
    $self->{sizer_17} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{datepicker_ctrl_1} = Wx::DatePickerCtrl->new($self->{notebook_1_wxDatePickerCtrl}, wxID_ANY, Wx::DateTime->new(), wxDefaultPosition, wxDefaultSize, wxDP_SHOWCENTURY);
    $self->{sizer_17}->Add($self->{datepicker_ctrl_1}, 1, wxALIGN_CENTER_VERTICAL|wxALL, 5);
    
    $self->{notebook_1_wxGauge} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxGauge}, _T("wxGauge"));
    
    $self->{sizer_15} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{gauge_1} = Wx::Gauge->new($self->{notebook_1_wxGauge}, wxID_ANY, 20);
    $self->{sizer_15}->Add($self->{gauge_1}, 1, wxALL, 5);
    
    $self->{notebook_1_wxGrid} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxGrid}, _T("wxGrid"));
    
    $self->{sizer_19} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{grid_1} = Wx::Grid->new($self->{notebook_1_wxGrid}, wxID_ANY);
    $self->{grid_1}->CreateGrid(10, 3);
    $self->{grid_1}->SetSelectionMode(wxGridSelectRows);
    $self->{sizer_19}->Add($self->{grid_1}, 1, wxEXPAND, 0);
    
    $self->{notebook_1_wxHyperlinkCtrl} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxHyperlinkCtrl}, _T("wxHyperlinkCtrl"));
    
    $self->{sizer_20} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{hyperlink_1} = Wx::HyperlinkCtrl->new($self->{notebook_1_wxHyperlinkCtrl}, wxID_ANY, _T("Homepage wxGlade"), _T("http://wxglade.sf.net"));
    $self->{sizer_20}->Add($self->{hyperlink_1}, 0, wxALL, 5);
    
    $self->{notebook_1_wxListBox} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxListBox}, _T("wxListBox"));
    
    $self->{sizer_4} = Wx::BoxSizer->new(wxVERTICAL);
    
    $self->{list_box_empty} = Wx::ListBox->new($self->{notebook_1_wxListBox}, wxID_ANY, wxDefaultPosition, wxDefaultSize, [], 0);
    $self->{sizer_4}->Add($self->{list_box_empty}, 1, wxALL|wxEXPAND, 5);
    
    $self->{list_box_filled} = Wx::ListBox->new($self->{notebook_1_wxListBox}, wxID_ANY, wxDefaultPosition, wxDefaultSize, [_T("Item 1"), _T("Item 2 (pre-selected)")], wxLB_MULTIPLE|wxLB_SORT);
    $self->{list_box_filled}->SetSelection(1);
    $self->{sizer_4}->Add($self->{list_box_filled}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxListCtrl} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxListCtrl}, _T("wxListCtrl"));
    
    $self->{sizer_3} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{list_ctrl_1} = Wx::ListCtrl->new($self->{notebook_1_wxListCtrl}, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxBORDER_SUNKEN|wxLC_REPORT);
    $self->{sizer_3}->Add($self->{list_ctrl_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxRadioBox} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxRadioBox}, _T("wxRadioBox"));
    
    $self->{grid_sizer_1} = Wx::GridSizer->new(2, 2, 0, 0);
    
    $self->{radio_box_empty1} = Wx::RadioBox->new($self->{notebook_1_wxRadioBox}, wxID_ANY, _T("radio_box_empty1"), wxDefaultPosition, wxDefaultSize, [], 1, wxRA_SPECIFY_ROWS);
    $self->{grid_sizer_1}->Add($self->{radio_box_empty1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{radio_box_filled1} = Wx::RadioBox->new($self->{notebook_1_wxRadioBox}, wxID_ANY, _T("radio_box_filled1"), wxDefaultPosition, wxDefaultSize, [_T("choice 1"), _T("choice 2 (pre-selected)"), _T("choice 3")], 0, wxRA_SPECIFY_ROWS);
    $self->{radio_box_filled1}->SetSelection(1);
    $self->{grid_sizer_1}->Add($self->{radio_box_filled1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{radio_box_empty2} = Wx::RadioBox->new($self->{notebook_1_wxRadioBox}, wxID_ANY, _T("radio_box_empty2"), wxDefaultPosition, wxDefaultSize, [], 1, wxRA_SPECIFY_COLS);
    $self->{grid_sizer_1}->Add($self->{radio_box_empty2}, 1, wxALL|wxEXPAND, 5);
    
    $self->{radio_box_filled2} = Wx::RadioBox->new($self->{notebook_1_wxRadioBox}, wxID_ANY, _T("radio_box_filled2"), wxDefaultPosition, wxDefaultSize, [_T("choice 1"), _T("choice 2 (pre-selected)")], 0, wxRA_SPECIFY_COLS);
    $self->{radio_box_filled2}->SetSelection(1);
    $self->{grid_sizer_1}->Add($self->{radio_box_filled2}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxRadioButton} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxRadioButton}, _T("wxRadioButton"));
    
    $self->{sizer_8} = Wx::StaticBoxSizer->new(Wx::StaticBox->new($self->{notebook_1_wxRadioButton}, wxID_ANY, _T("My RadioButton Group")), wxHORIZONTAL);
    
    $self->{grid_sizer_2} = Wx::FlexGridSizer->new(3, 2, 0, 0);
    $self->{sizer_8}->Add($self->{grid_sizer_2}, 1, wxEXPAND, 0);
    
    $self->{radio_btn_1} = Wx::RadioButton->new($self->{notebook_1_wxRadioButton}, wxID_ANY, _T("Alice"), wxDefaultPosition, wxDefaultSize, wxRB_GROUP);
    $self->{grid_sizer_2}->Add($self->{radio_btn_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{text_ctrl_1} = Wx::TextCtrl->new($self->{notebook_1_wxRadioButton}, wxID_ANY, "");
    $self->{grid_sizer_2}->Add($self->{text_ctrl_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{radio_btn_2} = Wx::RadioButton->new($self->{notebook_1_wxRadioButton}, wxID_ANY, _T("Bob"));
    $self->{grid_sizer_2}->Add($self->{radio_btn_2}, 1, wxALL|wxEXPAND, 5);
    
    $self->{text_ctrl_2} = Wx::TextCtrl->new($self->{notebook_1_wxRadioButton}, wxID_ANY, "");
    $self->{grid_sizer_2}->Add($self->{text_ctrl_2}, 1, wxALL|wxEXPAND, 5);
    
    $self->{radio_btn_3} = Wx::RadioButton->new($self->{notebook_1_wxRadioButton}, wxID_ANY, _T("Malroy"));
    $self->{grid_sizer_2}->Add($self->{radio_btn_3}, 1, wxALL|wxEXPAND, 5);
    
    $self->{text_ctrl_3} = Wx::TextCtrl->new($self->{notebook_1_wxRadioButton}, wxID_ANY, "");
    $self->{grid_sizer_2}->Add($self->{text_ctrl_3}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxSlider} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxSlider}, _T("wxSlider"));
    
    $self->{sizer_22} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{slider_1} = Wx::Slider->new($self->{notebook_1_wxSlider}, wxID_ANY, 5, 0, 10, wxDefaultPosition, wxDefaultSize, 0);
    $self->{sizer_22}->Add($self->{slider_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxSpinButton} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxSpinButton}, _T("wxSpinButton (with wxTextCtrl)"));
    
    $self->{sizer_16} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{tc_spin_button} = Wx::TextCtrl->new($self->{notebook_1_wxSpinButton}, wxID_ANY, _T("1"), wxDefaultPosition, wxDefaultSize, wxTE_RIGHT);
    $self->{sizer_16}->Add($self->{tc_spin_button}, 1, wxALL, 5);
    
    $self->{spin_button} = Wx::SpinButton->new($self->{notebook_1_wxSpinButton}, wxID_ANY,);
    $self->{sizer_16}->Add($self->{spin_button}, 1, wxALL, 5);
    
    $self->{notebook_1_wxSpinCtrl} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxSpinCtrl}, _T("wxSpinCtrl"));
    
    $self->{sizer_14} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{spin_ctrl_1} = Wx::SpinCtrl->new($self->{notebook_1_wxSpinCtrl}, wxID_ANY, "4", wxDefaultPosition, wxDefaultSize, wxSP_ARROW_KEYS, 0, 100, 4);
    $self->{sizer_14}->Add($self->{spin_ctrl_1}, 1, wxALL, 5);
    
    $self->{notebook_1_wxSplitterWindow_horizontal} = Wx::ScrolledWindow->new($self->{notebook_1}, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    $self->{notebook_1_wxSplitterWindow_horizontal}->SetScrollRate(10, 10);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxSplitterWindow_horizontal}, _T("wxSplitterWindow (horizontally)"));
    
    $self->{sizer_29} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{splitter_1} = Wx::SplitterWindow->new($self->{notebook_1_wxSplitterWindow_horizontal}, wxID_ANY, wxDefaultPosition, wxDefaultSize, 0);
    $self->{splitter_1}->SetMinimumPaneSize(20);
    $self->{sizer_29}->Add($self->{splitter_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{splitter_1_pane_1} = Wx::Panel->new($self->{splitter_1}, wxID_ANY);
    
    $self->{sizer_30} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{label_top_pane} = Wx::StaticText->new($self->{splitter_1_pane_1}, wxID_ANY, _T("top pane"));
    $self->{sizer_30}->Add($self->{label_top_pane}, 1, wxALL|wxEXPAND, 5);
    
    $self->{splitter_1_pane_2} = Wx::Panel->new($self->{splitter_1}, wxID_ANY);
    
    $self->{sizer_31} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{label_buttom_pane} = Wx::StaticText->new($self->{splitter_1_pane_2}, wxID_ANY, _T("bottom pane"));
    $self->{sizer_31}->Add($self->{label_buttom_pane}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxSplitterWindow_vertical} = Wx::ScrolledWindow->new($self->{notebook_1}, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    $self->{notebook_1_wxSplitterWindow_vertical}->SetScrollRate(10, 10);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxSplitterWindow_vertical}, _T("wxSplitterWindow (vertically)"));
    
    $self->{sizer_25} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{splitter_2} = Wx::SplitterWindow->new($self->{notebook_1_wxSplitterWindow_vertical}, wxID_ANY, wxDefaultPosition, wxDefaultSize, 0);
    $self->{splitter_2}->SetMinimumPaneSize(20);
    $self->{sizer_25}->Add($self->{splitter_2}, 1, wxALL|wxEXPAND, 5);
    
    $self->{splitter_2_pane_1} = Wx::Panel->new($self->{splitter_2}, wxID_ANY);
    
    $self->{sizer_32} = Wx::BoxSizer->new(wxVERTICAL);
    
    $self->{label_left_pane} = Wx::StaticText->new($self->{splitter_2_pane_1}, wxID_ANY, _T("left pane"));
    $self->{sizer_32}->Add($self->{label_left_pane}, 1, wxALL|wxEXPAND, 5);
    
    $self->{splitter_2_pane_2} = Wx::Panel->new($self->{splitter_2}, wxID_ANY);
    
    $self->{sizer_33} = Wx::BoxSizer->new(wxVERTICAL);
    
    $self->{label_right_pane} = Wx::StaticText->new($self->{splitter_2_pane_2}, wxID_ANY, _T("right pane"));
    $self->{sizer_33}->Add($self->{label_right_pane}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxStaticBitmap} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxStaticBitmap}, _T("wxStaticBitmap"));
    
    $self->{sizer_11} = Wx::BoxSizer->new(wxVERTICAL);
    
    $self->{bitmap_empty} = Wx::StaticBitmap->new($self->{notebook_1_wxStaticBitmap}, wxID_ANY, Wx::Bitmap->new(32, 32));
    $self->{sizer_11}->Add($self->{bitmap_empty}, 1, wxALL|wxEXPAND, 5);
    
    $self->{bitmap_file} = Wx::StaticBitmap->new($self->{notebook_1_wxStaticBitmap}, wxID_ANY, Wx::Bitmap->new("icon.xpm", wxBITMAP_TYPE_ANY));
    $self->{sizer_11}->Add($self->{bitmap_file}, 1, wxALL|wxEXPAND, 5);
    
    $self->{bitmap_nofile} = Wx::StaticBitmap->new($self->{notebook_1_wxStaticBitmap}, wxID_ANY, Wx::Bitmap->new("non-existing.bmp", wxBITMAP_TYPE_ANY));
    $self->{sizer_11}->Add($self->{bitmap_nofile}, 1, wxALL|wxEXPAND, 5);
    
    $self->{bitmap_art} = Wx::StaticBitmap->new($self->{notebook_1_wxStaticBitmap}, wxID_ANY, Wx::ArtProvider::GetBitmap(wxART_PRINT, wxART_OTHER, Wx::Size->new(32, 32)));
    $self->{sizer_11}->Add($self->{bitmap_art}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxStaticLine} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxStaticLine}, _T("wxStaticLine"));
    
    $self->{sizer_9} = Wx::BoxSizer->new(wxVERTICAL);
    
    $self->{sizer_10} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_9}->Add($self->{sizer_10}, 1, wxEXPAND, 0);
    
    $self->{static_line_2} = Wx::StaticLine->new($self->{notebook_1_wxStaticLine}, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxLI_VERTICAL);
    $self->{sizer_10}->Add($self->{static_line_2}, 1, wxALL|wxEXPAND, 5);
    
    $self->{static_line_3} = Wx::StaticLine->new($self->{notebook_1_wxStaticLine}, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxLI_VERTICAL);
    $self->{sizer_10}->Add($self->{static_line_3}, 1, wxALL|wxEXPAND, 5);
    
    $self->{static_line_4} = Wx::StaticLine->new($self->{notebook_1_wxStaticLine}, wxID_ANY);
    $self->{sizer_9}->Add($self->{static_line_4}, 1, wxALL|wxEXPAND, 5);
    
    $self->{static_line_5} = Wx::StaticLine->new($self->{notebook_1_wxStaticLine}, wxID_ANY);
    $self->{sizer_9}->Add($self->{static_line_5}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxStaticText} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxStaticText}, _T("wxStaticText"));
    
    $self->{grid_sizer_3} = Wx::FlexGridSizer->new(1, 3, 0, 0);
    
    $self->{label_1} = Wx::StaticText->new($self->{notebook_1_wxStaticText}, wxID_ANY, _T("red text (RGB)"), wxDefaultPosition, wxDefaultSize, wxALIGN_CENTER);
    $self->{label_1}->SetForegroundColour(Wx::Colour->new(255, 0, 0));
    $self->{grid_sizer_3}->Add($self->{label_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{label_4} = Wx::StaticText->new($self->{notebook_1_wxStaticText}, wxID_ANY, _T("black on red (RGB)"), wxDefaultPosition, wxDefaultSize, wxALIGN_CENTER);
    $self->{label_4}->SetBackgroundColour(Wx::Colour->new(255, 0, 0));
    $self->{label_4}->SetToolTipString(_T("Background colour won't show, check documentation for more details"));
    $self->{grid_sizer_3}->Add($self->{label_4}, 1, wxALL|wxEXPAND, 5);
    
    $self->{label_5} = Wx::StaticText->new($self->{notebook_1_wxStaticText}, wxID_ANY, _T("green on pink (RGB)"), wxDefaultPosition, wxDefaultSize, wxALIGN_CENTER);
    $self->{label_5}->SetBackgroundColour(Wx::Colour->new(255, 0, 255));
    $self->{label_5}->SetForegroundColour(Wx::Colour->new(0, 255, 0));
    $self->{label_5}->SetToolTipString(_T("Background colour won't show, check documentation for more details"));
    $self->{grid_sizer_3}->Add($self->{label_5}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_Spacer} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_Spacer}, _T("Spacer"));
    
    $self->{grid_sizer_4} = Wx::FlexGridSizer->new(1, 3, 0, 0);
    
    $self->{label_3} = Wx::StaticText->new($self->{notebook_1_Spacer}, wxID_ANY, _T("Two labels with a"));
    $self->{grid_sizer_4}->Add($self->{label_3}, 1, wxALL|wxEXPAND, 5);
    
    $self->{grid_sizer_4}->Add(60, 20, 1, wxALL|wxEXPAND, 5);
    
    $self->{label_2} = Wx::StaticText->new($self->{notebook_1_Spacer}, wxID_ANY, _T("spacer between"));
    $self->{grid_sizer_4}->Add($self->{label_2}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxTextCtrl} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxTextCtrl}, _T("wxTextCtrl"));
    
    $self->{sizer_18} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{text_ctrl} = Wx::TextCtrl->new($self->{notebook_1_wxTextCtrl}, wxID_ANY, _T("This\nis\na\nmultiline\nwxTextCtrl"), wxDefaultPosition, wxDefaultSize, wxTE_CHARWRAP|wxTE_MULTILINE|wxTE_WORDWRAP);
    $self->{sizer_18}->Add($self->{text_ctrl}, 1, wxALL|wxEXPAND, 5);
    
    $self->{notebook_1_wxToggleButton} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxToggleButton}, _T("wxToggleButton"));
    
    $self->{sizer_23} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{button_2} = Wx::ToggleButton->new($self->{notebook_1_wxToggleButton}, wxID_ANY, _T("Toggle Button 1"));
    $self->{sizer_23}->Add($self->{button_2}, 1, wxALL, 5);
    
    $self->{button_4} = Wx::ToggleButton->new($self->{notebook_1_wxToggleButton}, wxID_ANY, _T("Toggle Button 2"), wxDefaultPosition, wxDefaultSize, wxBU_BOTTOM|wxBU_EXACTFIT);
    $self->{sizer_23}->Add($self->{button_4}, 1, wxALL, 5);
    
    $self->{notebook_1_wxTreeCtrl} = Wx::Panel->new($self->{notebook_1}, wxID_ANY);
    $self->{notebook_1}->AddPage($self->{notebook_1_wxTreeCtrl}, _T("wxTreeCtrl"));
    
    $self->{sizer_24} = Wx::BoxSizer->new(wxHORIZONTAL);
    
    $self->{tree_ctrl_1} = Wx::TreeCtrl->new($self->{notebook_1_wxTreeCtrl}, wxID_ANY, wxDefaultPosition, wxDefaultSize, 0);
    $self->{sizer_24}->Add($self->{tree_ctrl_1}, 1, wxALL|wxEXPAND, 5);
    
    $self->{static_line_1} = Wx::StaticLine->new($self, wxID_ANY);
    $self->{sizer_1}->Add($self->{static_line_1}, 0, wxALL|wxEXPAND, 5);
    
    $self->{sizer_2} = Wx::FlexGridSizer->new(1, 2, 0, 0);
    $self->{sizer_1}->Add($self->{sizer_2}, 0, wxALIGN_RIGHT, 0);
    
    $self->{button_5} = Wx::Button->new($self, wxID_CLOSE, "");
    $self->{sizer_2}->Add($self->{button_5}, 0, wxALIGN_RIGHT|wxALL, 5);
    
    $self->{button_1} = Wx::Button->new($self, wxID_OK, "", wxDefaultPosition, wxDefaultSize, wxBU_TOP);
    $self->{sizer_2}->Add($self->{button_1}, 0, wxALIGN_RIGHT|wxALL, 5);
    
    $self->{notebook_1_wxTreeCtrl}->SetSizer($self->{sizer_24});
    
    $self->{notebook_1_wxToggleButton}->SetSizer($self->{sizer_23});
    
    $self->{notebook_1_wxTextCtrl}->SetSizer($self->{sizer_18});
    
    $self->{notebook_1_Spacer}->SetSizer($self->{grid_sizer_4});
    
    $self->{notebook_1_wxStaticText}->SetSizer($self->{grid_sizer_3});
    
    $self->{notebook_1_wxStaticLine}->SetSizer($self->{sizer_9});
    
    $self->{notebook_1_wxStaticBitmap}->SetSizer($self->{sizer_11});
    
    $self->{splitter_2_pane_2}->SetSizer($self->{sizer_33});
    
    $self->{splitter_2_pane_1}->SetSizer($self->{sizer_32});
    
    $self->{splitter_2}->SplitVertically($self->{splitter_2_pane_1}, $self->{splitter_2_pane_2}, );
    
    $self->{notebook_1_wxSplitterWindow_vertical}->SetSizer($self->{sizer_25});
    
    $self->{splitter_1_pane_2}->SetSizer($self->{sizer_31});
    
    $self->{splitter_1_pane_1}->SetSizer($self->{sizer_30});
    
    $self->{splitter_1}->SplitHorizontally($self->{splitter_1_pane_1}, $self->{splitter_1_pane_2}, );
    
    $self->{notebook_1_wxSplitterWindow_horizontal}->SetSizer($self->{sizer_29});
    
    $self->{notebook_1_wxSpinCtrl}->SetSizer($self->{sizer_14});
    
    $self->{notebook_1_wxSpinButton}->SetSizer($self->{sizer_16});
    
    $self->{notebook_1_wxSlider}->SetSizer($self->{sizer_22});
    
    $self->{notebook_1_wxRadioButton}->SetSizer($self->{sizer_8});
    
    $self->{notebook_1_wxRadioBox}->SetSizer($self->{grid_sizer_1});
    
    $self->{notebook_1_wxListCtrl}->SetSizer($self->{sizer_3});
    
    $self->{notebook_1_wxListBox}->SetSizer($self->{sizer_4});
    
    $self->{notebook_1_wxHyperlinkCtrl}->SetSizer($self->{sizer_20});
    
    $self->{notebook_1_wxGrid}->SetSizer($self->{sizer_19});
    
    $self->{notebook_1_wxGauge}->SetSizer($self->{sizer_15});
    
    $self->{notebook_1_wxDatePickerCtrl}->SetSizer($self->{sizer_17});
    
    $self->{notebook_1_wxComboBox}->SetSizer($self->{sizer_6});
    
    $self->{notebook_1_wxChoice}->SetSizer($self->{sizer_5});
    
    $self->{notebook_1_wxCheckListBox}->SetSizer($self->{sizer_26});
    
    $self->{notebook_1_wxCheckBox}->SetSizer($self->{sizer_21});
    
    $self->{notebook_1_wxCalendarCtrl}->SetSizer($self->{sizer_12});
    
    $self->{notebook_1_wxButton}->SetSizer($self->{sizer_28});
    
    $self->{sizer_13}->AddGrowableRow(0);
    $self->{sizer_13}->AddGrowableRow(1);
    $self->{sizer_13}->AddGrowableCol(0);
    $self->{sizer_13}->AddGrowableCol(1);
    $self->{notebook_1_wxBitmapButton}->SetSizer($self->{sizer_13});
    
    $self->{sizer_1}->AddGrowableRow(0);
    $self->{sizer_1}->AddGrowableCol(0);
    $self->SetSizer($self->{sizer_1});
    $self->{sizer_1}->SetSizeHints($self);
    
    $self->Layout();
    $self->Centre();
    Wx::Event::EVT_MENU($self, $self->{mn_Unix}->GetId, $self->can('onSelectUnix'));
    Wx::Event::EVT_MENU($self, $self->{mn_Windows}->GetId, $self->can('onSelectWindows'));
    Wx::Event::EVT_MENU($self, $self->{mn_RemoveTabs}->GetId, $self->can('onRemoveTabs'));
    Wx::Event::EVT_MENU($self, wxID_HELP, $self->can('onShowManual'));
    Wx::Event::EVT_NOTEBOOK_PAGE_CHANGED($self, $self->{notebook_1}->GetId, $self->can('OnNotebookPageChanged'));
    Wx::Event::EVT_NOTEBOOK_PAGE_CHANGING($self, $self->{notebook_1}->GetId, $self->can('OnNotebookPageChanging'));
    Wx::Event::EVT_BUTTON($self, $self->{button_1}->GetId, $self->can('onStartConverting'));

    # end wxGlade
    return $self;

}


sub onSelectUnix {
    my ($self, $event) = @_;
    # wxGlade: All_Widgets_Frame::onSelectUnix <event_handler>
    warn "Event handler (onSelectUnix) not implemented";
    $event->Skip;
    # end wxGlade
}


sub onSelectWindows {
    my ($self, $event) = @_;
    # wxGlade: All_Widgets_Frame::onSelectWindows <event_handler>
    warn "Event handler (onSelectWindows) not implemented";
    $event->Skip;
    # end wxGlade
}


sub onRemoveTabs {
    my ($self, $event) = @_;
    # wxGlade: All_Widgets_Frame::onRemoveTabs <event_handler>
    warn "Event handler (onRemoveTabs) not implemented";
    $event->Skip;
    # end wxGlade
}


sub onShowManual {
    my ($self, $event) = @_;
    # wxGlade: All_Widgets_Frame::onShowManual <event_handler>
    warn "Event handler (onShowManual) not implemented";
    $event->Skip;
    # end wxGlade
}


sub OnNotebookPageChanged {
    my ($self, $event) = @_;
    # wxGlade: All_Widgets_Frame::OnNotebookPageChanged <event_handler>
    warn "Event handler (OnNotebookPageChanged) not implemented";
    $event->Skip;
    # end wxGlade
}


sub OnNotebookPageChanging {
    my ($self, $event) = @_;
    # wxGlade: All_Widgets_Frame::OnNotebookPageChanging <event_handler>
    warn "Event handler (OnNotebookPageChanging) not implemented";
    $event->Skip;
    # end wxGlade
}


sub onStartConverting {
    my ($self, $event) = @_;
    # wxGlade: All_Widgets_Frame::onStartConverting <event_handler>
    warn "Event handler (onStartConverting) not implemented";
    $event->Skip;
    # end wxGlade
}


# end of class All_Widgets_Frame

1;

1;

package main;

unless(caller){
    my $local = Wx::Locale->new("English", "en", "en"); # replace with ??
    $local->AddCatalog("AllWidgets28App"); # replace with the appropriate catalog name

    local *Wx::App::OnInit = sub{1};
    my $AllWidgets28App = Wx::App->new();
    Wx::InitAllImageHandlers();

    my $All_Widgets = All_Widgets_Frame->new();

    $AllWidgets28App->SetTopWindow($All_Widgets);
    $All_Widgets->Show(1);
    $AllWidgets28App->MainLoop();
}
