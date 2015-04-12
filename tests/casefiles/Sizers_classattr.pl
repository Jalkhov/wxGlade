#!/usr/bin/perl -w -- 
#
# generated by wxGlade "faked test version"
#
# To get wxPerl visit http://www.wxperl.it
#

use Wx 0.15 qw[:allclasses];
use strict;

# begin wxGlade: dependencies
# end wxGlade

# begin wxGlade: extracode
# end wxGlade

package MyDialog;

use Wx qw[:everything];
use base qw(Wx::Dialog);
use strict;

use Wx::Locale gettext => '_T';
sub new {
    my( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
    $parent = undef              unless defined $parent;
    $id     = -1                 unless defined $id;
    $title  = ""                 unless defined $title;
    $pos    = wxDefaultPosition  unless defined $pos;
    $size   = wxDefaultSize      unless defined $size;
    $name   = ""                 unless defined $name;

    # begin wxGlade: MyDialog::new
    $style = wxDEFAULT_DIALOG_STYLE
        unless defined $style;

    $self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    $self->{list_box_1} = Wx::ListBox->new($self, wxID_ANY, wxDefaultPosition, wxDefaultSize, [], wxLB_SINGLE);
    $self->{sizer_2_staticbox} = Wx::StaticBox->new($self, wxID_ANY, _T("Unassigned Permissions:") );
    $self->{button_4} = Wx::Button->new($self, wxID_ADD, "");
    $self->{button_5} = Wx::Button->new($self, wxID_REMOVE, "");
    $self->{list_box_2} = Wx::ListBox->new($self, wxID_ANY, wxDefaultPosition, wxDefaultSize, [], wxLB_SINGLE);
    $self->{sizer_3_staticbox} = Wx::StaticBox->new($self, wxID_ANY, _T("Assigned Permissions:") );
    $self->{static_line_1} = Wx::StaticLine->new($self, wxID_ANY);
    $self->{button_2} = Wx::Button->new($self, wxID_OK, "");
    $self->{button_1} = Wx::Button->new($self, wxID_CANCEL, "");

    $self->__set_properties();
    $self->__do_layout();

    # end wxGlade
    return $self;

}


sub __set_properties {
    my $self = shift;
    # begin wxGlade: MyDialog::__set_properties
    $self->SetTitle(_T("dialog_1"));
    # end wxGlade
}

sub __do_layout {
    my $self = shift;
    # begin wxGlade: MyDialog::__do_layout
    $self->{grid_sizer_1} = Wx::FlexGridSizer->new(3, 1, 0, 0);
    $self->{sizer_1} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{grid_sizer_2} = Wx::FlexGridSizer->new(1, 3, 0, 0);
    $self->{sizer_3_staticbox}->Lower();
    $self->{sizer_3} = Wx::StaticBoxSizer->new($self->{sizer_3_staticbox}, wxHORIZONTAL);
    $self->{sizer_4} = Wx::FlexGridSizer->new(4, 1, 0, 0);
    $self->{sizer_2_staticbox}->Lower();
    $self->{sizer_2} = Wx::StaticBoxSizer->new($self->{sizer_2_staticbox}, wxHORIZONTAL);
    $self->{sizer_2}->Add($self->{list_box_1}, 1, wxALL|wxEXPAND, 5);
    $self->{grid_sizer_2}->Add($self->{sizer_2}, 1, wxEXPAND, 0);
    $self->{sizer_4}->Add(20, 20, 0, wxEXPAND, 0);
    $self->{sizer_4}->Add($self->{button_4}, 0, wxALL, 5);
    $self->{sizer_4}->Add($self->{button_5}, 0, wxALL, 5);
    $self->{sizer_4}->Add(20, 20, 0, wxEXPAND, 0);
    $self->{sizer_4}->AddGrowableRow(0);
    $self->{sizer_4}->AddGrowableRow(3);
    $self->{grid_sizer_2}->Add($self->{sizer_4}, 1, wxALIGN_CENTER|wxEXPAND, 0);
    $self->{sizer_3}->Add($self->{list_box_2}, 1, wxALL|wxEXPAND, 5);
    $self->{grid_sizer_2}->Add($self->{sizer_3}, 1, wxEXPAND, 0);
    $self->{grid_sizer_2}->AddGrowableRow(0);
    $self->{grid_sizer_2}->AddGrowableCol(0);
    $self->{grid_sizer_2}->AddGrowableCol(2);
    $self->{grid_sizer_1}->Add($self->{grid_sizer_2}, 1, wxEXPAND, 0);
    $self->{grid_sizer_1}->Add($self->{static_line_1}, 0, wxALL|wxEXPAND, 5);
    $self->{sizer_1}->Add($self->{button_2}, 0, wxALL, 5);
    $self->{sizer_1}->Add($self->{button_1}, 0, wxALL, 5);
    $self->{grid_sizer_1}->Add($self->{sizer_1}, 1, wxALIGN_RIGHT|wxEXPAND, 0);
    $self->SetSizer($self->{grid_sizer_1});
    $self->{grid_sizer_1}->Fit($self);
    $self->{grid_sizer_1}->AddGrowableRow(0);
    $self->{grid_sizer_1}->AddGrowableCol(0);
    $self->Layout();
    # end wxGlade
}

# end of class MyDialog

1;

package MyApp;

use base qw(Wx::App);
use strict;

sub OnInit {
    my( $self ) = shift;

    Wx::InitAllImageHandlers();

    my $dialog_1 = MyDialog->new();

    $self->SetTopWindow($dialog_1);
    $dialog_1->Show(1);

    return 1;
}
# end of class MyApp

package main;

unless(caller){
    my $local = Wx::Locale->new("English", "en", "en"); # replace with ??
    $local->AddCatalog("app"); # replace with the appropriate catalog name

    my $app = MyApp->new();
    $app->MainLoop();
}
