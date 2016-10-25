#!/usr/local/bin/seppperl
#!/usr/local/bin/seppperl -d:ptkdb
# ---------------------------------------------------------------
# $Id: lib_tcu.pl,v 1.3 2014/08/25 06:58:34 lothar.hermann Exp $#
#
# $Log: lib_tcu.pl,v $
# Revision 1.3  2014/08/25 06:58:34  lothar.hermann
# Killen der Java Proccesse bei Fehler
#
# Revision 1.2  2014/08/25 06:57:53  lothar.hermann
# Semaphore und Exra Log
#
# Revision 1.1  2014/08/21 15:13:19  lothar.hermann
# CVS init
##
# ---------------------------------------------------------------

# semaphore 
# call  { my $fh = sem_wait_sh_Soa (); }
# semaphore is releases if blpck (Bracket) closes because of my'd $fh
#
require "libtime.pl";
require "lib_sem.pl";

use libcfg2;
use Time::localtime;
use POSIX qw(strftime);

my $locDir = "$ENV{APPDATA}\\SealDoc4TC";
mkdir $locDir , 755 unless ( -d $locDir );
my $SoalockFile = "$locDir\\lckSoaClnt.sem";

sub sem_wait_sh_Soa
{
	return sem_wait_sh($SoalockFile);
}
