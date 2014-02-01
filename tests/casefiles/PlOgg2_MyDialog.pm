# generated by wxGlade "faked test version"
#
# To get wxPerl visit http://wxPerl.sourceforge.net/
#

use Wx 0.15 qw[:allclasses];
use strict;
# begin wxGlade: dependencies
# end wxGlade

# begin wxGlade: extracode
# extra code added using wxGlade
use Time::localtime;
# end wxGlade

package PlOgg2_MyDialog;

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

    # begin wxGlade: PlOgg2_MyDialog::new
    $style = wxDEFAULT_DIALOG_STYLE|wxRESIZE_BORDER
        unless defined $style;

    $self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    $self->{notebook_1} = Wx::Notebook->new($self, wxID_ANY, wxDefaultPosition, wxDefaultSize, 0);
    $self->{notebook_1_pane_1} = Wx::Panel->new($self->{notebook_1}, wxID_ANY, wxDefaultPosition, wxDefaultSize, );
    $self->{text_ctrl_1} = Wx::TextCtrl->new($self->{notebook_1_pane_1}, wxID_ANY, "");
    $self->{button_3} = Wx::Button->new($self->{notebook_1_pane_1}, wxID_OPEN, "");
    $self->{notebook_1_pane_2} = Wx::Panel->new($self->{notebook_1}, wxID_ANY, wxDefaultPosition, wxDefaultSize, );
    $self->{radio_box_1} = Wx::RadioBox->new($self->{notebook_1_pane_2}, wxID_ANY, _T("Sampling Rate"), wxDefaultPosition, wxDefaultSize, [_T("44 kbit"), _T("128 kbit")], 0, wxRA_SPECIFY_ROWS);
    $self->{notebook_1_pane_3} = Wx::Panel->new($self->{notebook_1}, wxID_ANY, wxDefaultPosition, wxDefaultSize, );
    $self->{text_ctrl_2} = Wx::TextCtrl->new($self->{notebook_1_pane_3}, wxID_ANY, "", wxDefaultPosition, wxDefaultSize, wxTE_MULTILINE);
    $self->{notebook_1_pane_4} = Wx::Panel->new($self->{notebook_1}, wxID_ANY, wxDefaultPosition, wxDefaultSize, );
    $self->{label_2} = Wx::StaticText->new($self->{notebook_1_pane_4}, wxID_ANY, _T("File name:"));
    $self->{text_ctrl_3} = Wx::TextCtrl->new($self->{notebook_1_pane_4}, wxID_ANY, "");
    $self->{button_4} = Wx::Button->new($self->{notebook_1_pane_4}, wxID_OPEN, "");
    $self->{checkbox_1} = Wx::CheckBox->new($self->{notebook_1_pane_4}, wxID_ANY, _T("Overwrite existing file"));
    $self->{static_line_1} = Wx::StaticLine->new($self, wxID_ANY);
    $self->{button_5} = Wx::Button->new($self, wxID_CLOSE, "");
    $self->{button_2} = Wx::Button->new($self, wxID_CANCEL, "", wxDefaultPosition, wxDefaultSize, wxBU_TOP);
    $self->{button_1} = Wx::Button->new($self, wxID_OK, "", wxDefaultPosition, wxDefaultSize, wxBU_TOP);

    $self->__set_properties();
    $self->__do_layout();

    Wx::Event::EVT_BUTTON($self, $self->{button_1}->GetId, \&startConverting);

    # end wxGlade
    return $self;

}


sub __set_properties {
    my $self = shift;
    # begin wxGlade: PlOgg2_MyDialog::__set_properties
    $self->SetTitle(_T("mp3 2 ogg"));
    $self->SetSize(Wx::Size->new(500, 300));
    $self->{radio_box_1}->SetSelection(0);
    $self->{checkbox_1}->SetToolTipString(_T("Overwrite an existing file"));
    $self->{checkbox_1}->SetValue(1);
    # end wxGlade
}

sub __do_layout {
    my $self = shift;
    # begin wxGlade: PlOgg2_MyDialog::__do_layout
    $self->{sizer_1} = Wx::FlexGridSizer->new(3, 1, 0, 0);
    $self->{sizer_2} = Wx::FlexGridSizer->new(1, 3, 0, 0);
    $self->{grid_sizer_2} = Wx::FlexGridSizer->new(2, 3, 0, 0);
    $self->{sizer_3} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{sizer_4} = Wx::BoxSizer->new(wxHORIZONTAL);
    $self->{grid_sizer_1} = Wx::FlexGridSizer->new(1, 3, 0, 0);
    my $label_1 = Wx::StaticText->new($self->{notebook_1_pane_1}, wxID_ANY, _T("File name:"));
    $self->{grid_sizer_1}->Add($label_1, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5);
    $self->{grid_sizer_1}->Add($self->{text_ctrl_1}, 1, wxALL|wxEXPAND|wxALIGN_CENTER_VERTICAL, 5);
    $self->{grid_sizer_1}->Add($self->{button_3}, 0, wxALL, 5);
    $self->{notebook_1_pane_1}->SetSizer($self->{grid_sizer_1});
    $self->{grid_sizer_1}->AddGrowableCol(1);
    $self->{sizer_4}->Add($self->{radio_box_1}, 1, wxALL|wxEXPAND|wxSHAPED, 5);
    $self->{notebook_1_pane_2}->SetSizer($self->{sizer_4});
    $self->{sizer_3}->Add($self->{text_ctrl_2}, 1, wxALL|wxEXPAND, 5);
    $self->{notebook_1_pane_3}->SetSizer($self->{sizer_3});
    $self->{grid_sizer_2}->Add($self->{label_2}, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5);
    $self->{grid_sizer_2}->Add($self->{text_ctrl_3}, 0, wxALL|wxEXPAND, 5);
    $self->{grid_sizer_2}->Add($self->{button_4}, 0, wxALL, 5);
    $self->{grid_sizer_2}->Add(20, 20, 0, 0, 0);
    $self->{grid_sizer_2}->Add($self->{checkbox_1}, 0, wxALL|wxEXPAND, 5);
    $self->{grid_sizer_2}->Add(20, 20, 0, 0, 0);
    $self->{notebook_1_pane_4}->SetSizer($self->{grid_sizer_2});
    $self->{grid_sizer_2}->AddGrowableCol(1);
    $self->{notebook_1}->AddPage($self->{notebook_1_pane_1}, _T("Input File"));
    $self->{notebook_1}->AddPage($self->{notebook_1_pane_2}, _T("Converting Options"));
    $self->{notebook_1}->AddPage($self->{notebook_1_pane_3}, _T("Converting Progress"));
    $self->{notebook_1}->AddPage($self->{notebook_1_pane_4}, _T("Output File"));
    $self->{sizer_1}->Add($self->{notebook_1}, 1, wxEXPAND, 0);
    $self->{sizer_1}->Add($self->{static_line_1}, 0, wxALL|wxEXPAND, 5);
    $self->{sizer_2}->Add($self->{button_5}, 0, wxALL|wxALIGN_RIGHT, 5);
    $self->{sizer_2}->Add($self->{button_2}, 0, wxALL|wxALIGN_RIGHT, 5);
    $self->{sizer_2}->Add($self->{button_1}, 0, wxALL|wxALIGN_RIGHT, 5);
    $self->{sizer_1}->Add($self->{sizer_2}, 0, wxALIGN_RIGHT, 0);
    $self->SetSizer($self->{sizer_1});
    $self->{sizer_1}->AddGrowableRow(0);
    $self->{sizer_1}->AddGrowableCol(0);
    $self->Layout();
    $self->Centre();
    # end wxGlade
}

sub startConverting {
    my ($self, $event) = @_;
    # wxGlade: PlOgg2_MyDialog::startConverting <event_handler>
    warn "Event handler (startConverting) not implemented";
    $event->Skip;
    # end wxGlade
}


# end of class PlOgg2_MyDialog

1;

