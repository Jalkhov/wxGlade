#!/usr/bin/perl -w -- 
#
# generated by wxGlade "faked test version"
#
# To get wxPerl visit http://wxPerl.sourceforge.net/
#

# This is an automatically generated file.
# Manual changes will be overwritten without warning!

use Wx 0.15 qw[:allclasses];
use strict;
1;

package main;

use PlOgg2_MyDialog;

unless(caller){
    my $local = Wx::Locale->new("English", "en", "en"); # replace with ??
    $local->AddCatalog("PlOgg2_app"); # replace with the appropriate catalog name

    local *Wx::App::OnInit = sub{1};
    my $PlOgg2_app = Wx::App->new();
    Wx::InitAllImageHandlers();

    my $Mp3_To_Ogg = PlOgg2_MyDialog->new();

    $PlOgg2_app->SetTopWindow($Mp3_To_Ogg);
    $Mp3_To_Ogg->Show(1);
    $PlOgg2_app->MainLoop();
}
