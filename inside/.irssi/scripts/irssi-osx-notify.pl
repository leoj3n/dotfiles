use strict;
use vars qw($VERSION %IRSSI);

use Irssi;
$VERSION = '1.0.0';
%IRSSI = (
  name        => 'irssi-osx-notify',
  description => 'OS X Notifications for Irssi.',
  license     => 'GNU General Public License',
);

#--------------------------------------------------------------------
# Requires growly (https://github.com/ryankee/growly):
#
#   brew install growly
#
#--------------------------------------------------------------------

#--------------------------------------------------------------------
# Private message parsing
#--------------------------------------------------------------------

sub priv_msg {
  my ($server,$msg,$nick,$address,$target) = @_;
  system("growly -t '".$nick."' echo '".$msg."'");
}

#--------------------------------------------------------------------
# Printing hilight's
#--------------------------------------------------------------------

sub hilight {
  my ($dest, $text, $stripped) = @_;
  if ($dest->{level} & MSGLEVEL_HILIGHT) {
    system("growly -t '".$dest->{target}."' echo '".$stripped."'");
  }
}

#--------------------------------------------------------------------
# Irssi::signal_add_last / Irssi::command_bind
#--------------------------------------------------------------------

Irssi::signal_add_last("message private", "priv_msg");
Irssi::signal_add_last("print text", "hilight");

#- end
