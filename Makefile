# This Makefile is for the LolCatalyst::Lite extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.62 (Revision: 66200) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     ABSTRACT => q[Catalyst based application]
#     AUTHOR => [q[chakkrit,,,]]
#     BUILD_REQUIRES => { Test::More=>q[0.88], DBD::SQLite=>q[0], Catalyst::Devel=>q[0], ExtUtils::MakeMaker=>q[6.36] }
#     CONFIGURE_REQUIRES => {  }
#     DISTNAME => q[LolCatalyst-Lite]
#     EXE_FILES => [q[script/lolcatalyst_lite_auth_admin.pl], q[script/lolcatalyst_lite_cgi.pl], q[script/lolcatalyst_lite_create.pl], q[script/lolcatalyst_lite_fastcgi.pl], q[script/lolcatalyst_lite_server.pl], q[script/lolcatalyst_lite_test.pl]]
#     LICENSE => q[perl]
#     NAME => q[LolCatalyst::Lite]
#     NO_META => q[1]
#     PREREQ_PM => { Catalyst::Authentication::Credential::HTTP=>q[0], DBD::SQLite=>q[0], Catalyst::Devel=>q[0], Catalyst::Plugin::ConfigLoader=>q[0], Catalyst::Plugin::Session::Store::FastMmap=>q[0], Catalyst::View::JSON=>q[0], Catalyst::Plugin::Session::State::Cookie=>q[0], Catalyst::Plugin::Authorization::Roles=>q[0], Config::General=>q[0], Catalyst::Authentication::Store::DBIx::Class=>q[0], Moose=>q[0], DBIx::Class::EncodedColumn=>q[0], Catalyst::View::TT=>q[0], namespace::autoclean=>q[0], Catalyst::Plugin::Static::Simple=>q[0], ExtUtils::MakeMaker=>q[6.36], Catalyst::Helper::AuthDBIC=>q[0], Catalyst::Plugin::Session=>q[0], Catalyst::Action::RenderView=>q[0], Const::Fast=>q[0], Test::More=>q[0.88], Catalyst::Model::Adaptor=>q[0], Catalyst::Plugin::Authentication=>q[0], Catalyst::Runtime=>q[5.90006], Catalyst::Test=>q[0] }
#     VERSION => q[0.01]
#     VERSION_FROM => q[lib/LolCatalyst/Lite.pm]
#     dist => { PREOP=>q[$(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"] }
#     realclean => { FILES=>q[MYMETA.yml] }
#     test => { TESTS=>q[t/01app.t t/model_Auth.t t/model_Translate.t t/view_Service.t t/view_Web.t] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib/perl/5.12/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = cc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = cc
LDDLFLAGS = -shared -O2 -g -L/usr/local/lib -fstack-protector
LDFLAGS =  -fstack-protector -L/usr/local/lib
LIBC = 
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 2.6.24-28-server
RANLIB = :
SITELIBEXP = /usr/local/share/perl/5.12.4
SITEARCHEXP = /usr/local/lib/perl/5.12.4
SO = so
VENDORARCHEXP = /usr/lib/perl5
VENDORLIBEXP = /usr/share/perl5


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = LolCatalyst::Lite
NAME_SYM = LolCatalyst_Lite
VERSION = 0.01
VERSION_MACRO = VERSION
VERSION_SYM = 0_01
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.01
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1p
MAN3EXT = 3pm
INSTALLDIRS = site
INSTALL_BASE = /home/chakkrit/perl5
DESTDIR = 
PREFIX = $(INSTALL_BASE)
INSTALLPRIVLIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = $(INSTALL_BASE)/lib/perl5
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = $(INSTALL_BASE)/lib/perl5/x86_64-linux-gnu-thread-multi
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = $(INSTALL_BASE)/lib/perl5/x86_64-linux-gnu-thread-multi
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = $(INSTALL_BASE)/lib/perl5/x86_64-linux-gnu-thread-multi
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = $(INSTALL_BASE)/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = $(INSTALL_BASE)/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = $(INSTALL_BASE)/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = $(INSTALL_BASE)/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = $(INSTALL_BASE)/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = $(INSTALL_BASE)/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = $(INSTALL_BASE)/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = $(INSTALL_BASE)/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = $(INSTALL_BASE)/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = $(INSTALL_BASE)/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB =
PERL_ARCHLIB = /usr/lib/perl/5.12
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib/perl/5.12/CORE
PERL = /usr/bin/perl "-Iinc"
FULLPERL = /usr/bin/perl "-Iinc"
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /home/chakkrit/perl5/lib/perl5/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.62
MM_REVISION = 66200

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = LolCatalyst/Lite
BASEEXT = Lite
PARENT_NAME = LolCatalyst
DLBASE = $(BASEEXT)
VERSION_FROM = lib/LolCatalyst/Lite.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = script/lolcatalyst_lite_auth_admin.pl \
	script/lolcatalyst_lite_cgi.pl \
	script/lolcatalyst_lite_create.pl \
	script/lolcatalyst_lite_fastcgi.pl \
	script/lolcatalyst_lite_server.pl \
	script/lolcatalyst_lite_test.pl
MAN3PODS = lib/LolCatalyst/Lite.pm \
	lib/LolCatalyst/Lite/Auth/Schema.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/Role.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/User.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/UserRole.pm \
	lib/LolCatalyst/Lite/Controller/Root.pm \
	lib/LolCatalyst/Lite/Model/Auth.pm \
	lib/LolCatalyst/Lite/Model/Translator.pm \
	lib/LolCatalyst/Lite/Translator.pm \
	lib/LolCatalyst/Lite/View/Service.pm \
	lib/LolCatalyst/Lite/View/Web.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)/LolCatalyst
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/LolCatalyst

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/LolCatalyst/Lite.pm \
	lib/LolCatalyst/Lite/Auth/Schema.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/Role.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/User.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/UserRole.pm \
	lib/LolCatalyst/Lite/Controller/Root.pm \
	lib/LolCatalyst/Lite/Model/Auth.pm \
	lib/LolCatalyst/Lite/Model/Translator.pm \
	lib/LolCatalyst/Lite/Translator.pm \
	lib/LolCatalyst/Lite/View/Service.pm \
	lib/LolCatalyst/Lite/View/Web.pm

PM_TO_BLIB = lib/LolCatalyst/Lite/Auth/Schema/Result/Role.pm \
	blib/lib/LolCatalyst/Lite/Auth/Schema/Result/Role.pm \
	lib/LolCatalyst/Lite/Controller/Root.pm \
	blib/lib/LolCatalyst/Lite/Controller/Root.pm \
	lib/LolCatalyst/Lite.pm \
	blib/lib/LolCatalyst/Lite.pm \
	lib/LolCatalyst/Lite/Translator.pm \
	blib/lib/LolCatalyst/Lite/Translator.pm \
	lib/LolCatalyst/Lite/View/Service.pm \
	blib/lib/LolCatalyst/Lite/View/Service.pm \
	lib/LolCatalyst/Lite/Model/Auth.pm \
	blib/lib/LolCatalyst/Lite/Model/Auth.pm \
	lib/LolCatalyst/Lite/View/Web.pm \
	blib/lib/LolCatalyst/Lite/View/Web.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/UserRole.pm \
	blib/lib/LolCatalyst/Lite/Auth/Schema/Result/UserRole.pm \
	lib/LolCatalyst/Lite/Model/Translator.pm \
	blib/lib/LolCatalyst/Lite/Model/Translator.pm \
	lib/LolCatalyst/Lite/Auth/Schema.pm \
	blib/lib/LolCatalyst/Lite/Auth/Schema.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/User.pm \
	blib/lib/LolCatalyst/Lite/Auth/Schema/Result/User.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.62
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = LolCatalyst-Lite
DISTVNAME = LolCatalyst-Lite-0.01


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"\
	INSTALL_BASE="$(INSTALL_BASE)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	script/lolcatalyst_lite_auth_admin.pl \
	script/lolcatalyst_lite_server.pl \
	script/lolcatalyst_lite_create.pl \
	script/lolcatalyst_lite_test.pl \
	script/lolcatalyst_lite_fastcgi.pl \
	script/lolcatalyst_lite_cgi.pl \
	lib/LolCatalyst/Lite/Auth/Schema/Result/Role.pm \
	lib/LolCatalyst/Lite/Controller/Root.pm \
	lib/LolCatalyst/Lite.pm \
	lib/LolCatalyst/Lite/Translator.pm \
	lib/LolCatalyst/Lite/View/Service.pm \
	lib/LolCatalyst/Lite/Model/Auth.pm \
	lib/LolCatalyst/Lite/View/Web.pm \
	lib/LolCatalyst/Lite/Model/Translator.pm \
	lib/LolCatalyst/Lite/Auth/Schema.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/UserRole.pm \
	lib/LolCatalyst/Lite/Auth/Schema/Result/User.pm
	$(NOECHO) $(POD2MAN) --section=1 --perm_rw=$(PERM_RW) \
	  script/lolcatalyst_lite_auth_admin.pl $(INST_MAN1DIR)/lolcatalyst_lite_auth_admin.pl.$(MAN1EXT) \
	  script/lolcatalyst_lite_server.pl $(INST_MAN1DIR)/lolcatalyst_lite_server.pl.$(MAN1EXT) \
	  script/lolcatalyst_lite_create.pl $(INST_MAN1DIR)/lolcatalyst_lite_create.pl.$(MAN1EXT) \
	  script/lolcatalyst_lite_test.pl $(INST_MAN1DIR)/lolcatalyst_lite_test.pl.$(MAN1EXT) \
	  script/lolcatalyst_lite_fastcgi.pl $(INST_MAN1DIR)/lolcatalyst_lite_fastcgi.pl.$(MAN1EXT) \
	  script/lolcatalyst_lite_cgi.pl $(INST_MAN1DIR)/lolcatalyst_lite_cgi.pl.$(MAN1EXT) 
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/LolCatalyst/Lite/Auth/Schema/Result/Role.pm $(INST_MAN3DIR)/LolCatalyst::Lite::Auth::Schema::Result::Role.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/Controller/Root.pm $(INST_MAN3DIR)/LolCatalyst::Lite::Controller::Root.$(MAN3EXT) \
	  lib/LolCatalyst/Lite.pm $(INST_MAN3DIR)/LolCatalyst::Lite.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/Translator.pm $(INST_MAN3DIR)/LolCatalyst::Lite::Translator.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/View/Service.pm $(INST_MAN3DIR)/LolCatalyst::Lite::View::Service.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/Model/Auth.pm $(INST_MAN3DIR)/LolCatalyst::Lite::Model::Auth.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/View/Web.pm $(INST_MAN3DIR)/LolCatalyst::Lite::View::Web.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/Model/Translator.pm $(INST_MAN3DIR)/LolCatalyst::Lite::Model::Translator.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/Auth/Schema.pm $(INST_MAN3DIR)/LolCatalyst::Lite::Auth::Schema.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/Auth/Schema/Result/UserRole.pm $(INST_MAN3DIR)/LolCatalyst::Lite::Auth::Schema::Result::UserRole.$(MAN3EXT) \
	  lib/LolCatalyst/Lite/Auth/Schema/Result/User.pm $(INST_MAN3DIR)/LolCatalyst::Lite::Auth::Schema::Result::User.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:

EXE_FILES = script/lolcatalyst_lite_auth_admin.pl script/lolcatalyst_lite_cgi.pl script/lolcatalyst_lite_create.pl script/lolcatalyst_lite_fastcgi.pl script/lolcatalyst_lite_server.pl script/lolcatalyst_lite_test.pl

pure_all :: $(INST_SCRIPT)/lolcatalyst_lite_auth_admin.pl $(INST_SCRIPT)/lolcatalyst_lite_server.pl $(INST_SCRIPT)/lolcatalyst_lite_create.pl $(INST_SCRIPT)/lolcatalyst_lite_test.pl $(INST_SCRIPT)/lolcatalyst_lite_fastcgi.pl $(INST_SCRIPT)/lolcatalyst_lite_cgi.pl
	$(NOECHO) $(NOOP)

realclean ::
	$(RM_F) \
	  $(INST_SCRIPT)/lolcatalyst_lite_auth_admin.pl $(INST_SCRIPT)/lolcatalyst_lite_server.pl \
	  $(INST_SCRIPT)/lolcatalyst_lite_create.pl $(INST_SCRIPT)/lolcatalyst_lite_test.pl \
	  $(INST_SCRIPT)/lolcatalyst_lite_fastcgi.pl $(INST_SCRIPT)/lolcatalyst_lite_cgi.pl 

$(INST_SCRIPT)/lolcatalyst_lite_auth_admin.pl : script/lolcatalyst_lite_auth_admin.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/lolcatalyst_lite_auth_admin.pl
	$(CP) script/lolcatalyst_lite_auth_admin.pl $(INST_SCRIPT)/lolcatalyst_lite_auth_admin.pl
	$(FIXIN) $(INST_SCRIPT)/lolcatalyst_lite_auth_admin.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/lolcatalyst_lite_auth_admin.pl

$(INST_SCRIPT)/lolcatalyst_lite_server.pl : script/lolcatalyst_lite_server.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/lolcatalyst_lite_server.pl
	$(CP) script/lolcatalyst_lite_server.pl $(INST_SCRIPT)/lolcatalyst_lite_server.pl
	$(FIXIN) $(INST_SCRIPT)/lolcatalyst_lite_server.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/lolcatalyst_lite_server.pl

$(INST_SCRIPT)/lolcatalyst_lite_create.pl : script/lolcatalyst_lite_create.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/lolcatalyst_lite_create.pl
	$(CP) script/lolcatalyst_lite_create.pl $(INST_SCRIPT)/lolcatalyst_lite_create.pl
	$(FIXIN) $(INST_SCRIPT)/lolcatalyst_lite_create.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/lolcatalyst_lite_create.pl

$(INST_SCRIPT)/lolcatalyst_lite_test.pl : script/lolcatalyst_lite_test.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/lolcatalyst_lite_test.pl
	$(CP) script/lolcatalyst_lite_test.pl $(INST_SCRIPT)/lolcatalyst_lite_test.pl
	$(FIXIN) $(INST_SCRIPT)/lolcatalyst_lite_test.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/lolcatalyst_lite_test.pl

$(INST_SCRIPT)/lolcatalyst_lite_fastcgi.pl : script/lolcatalyst_lite_fastcgi.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/lolcatalyst_lite_fastcgi.pl
	$(CP) script/lolcatalyst_lite_fastcgi.pl $(INST_SCRIPT)/lolcatalyst_lite_fastcgi.pl
	$(FIXIN) $(INST_SCRIPT)/lolcatalyst_lite_fastcgi.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/lolcatalyst_lite_fastcgi.pl

$(INST_SCRIPT)/lolcatalyst_lite_cgi.pl : script/lolcatalyst_lite_cgi.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/lolcatalyst_lite_cgi.pl
	$(CP) script/lolcatalyst_lite_cgi.pl $(INST_SCRIPT)/lolcatalyst_lite_cgi.pl
	$(FIXIN) $(INST_SCRIPT)/lolcatalyst_lite_cgi.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/lolcatalyst_lite_cgi.pl



# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts MYMETA.json \
	  core.[0-9][0-9][0-9][0-9] MYMETA.yml \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  $(BASEEXT).def perl \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  MYMETA.yml $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile :
	$(NOECHO) $(NOOP)


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir  
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.json to MANIFEST: $${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/01app.t t/model_Auth.t t/model_Translate.t t/view_Service.t t/view_Web.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), 'inc', '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-Iinc" "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="0.01">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Catalyst based application</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>chakkrit,,,</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Action::RenderView" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Authentication::Credential::HTTP" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Authentication::Store::DBIx::Class" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Helper::AuthDBIC" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Model::Adaptor" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Authentication" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Authorization::Roles" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::ConfigLoader" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Session" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Session::State::Cookie" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Session::Store::FastMmap" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Static::Simple" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Runtime" VERSION="5.90006" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Test" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::View::JSON" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::View::TT" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Config::General" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Const::Fast" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="DBIx::Class::EncodedColumn" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="namespace::autoclean" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="x86_64-linux-gnu-thread-multi-5.12" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/LolCatalyst/Lite/Auth/Schema/Result/Role.pm blib/lib/LolCatalyst/Lite/Auth/Schema/Result/Role.pm \
	  lib/LolCatalyst/Lite/Controller/Root.pm blib/lib/LolCatalyst/Lite/Controller/Root.pm \
	  lib/LolCatalyst/Lite.pm blib/lib/LolCatalyst/Lite.pm \
	  lib/LolCatalyst/Lite/Translator.pm blib/lib/LolCatalyst/Lite/Translator.pm \
	  lib/LolCatalyst/Lite/View/Service.pm blib/lib/LolCatalyst/Lite/View/Service.pm \
	  lib/LolCatalyst/Lite/Model/Auth.pm blib/lib/LolCatalyst/Lite/Model/Auth.pm \
	  lib/LolCatalyst/Lite/View/Web.pm blib/lib/LolCatalyst/Lite/View/Web.pm \
	  lib/LolCatalyst/Lite/Auth/Schema/Result/UserRole.pm blib/lib/LolCatalyst/Lite/Auth/Schema/Result/UserRole.pm \
	  lib/LolCatalyst/Lite/Model/Translator.pm blib/lib/LolCatalyst/Lite/Model/Translator.pm \
	  lib/LolCatalyst/Lite/Auth/Schema.pm blib/lib/LolCatalyst/Lite/Auth/Schema.pm \
	  lib/LolCatalyst/Lite/Auth/Schema/Result/User.pm blib/lib/LolCatalyst/Lite/Auth/Schema/Result/User.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
# Postamble by Module::Install 1.04
# --- Module::Install::Admin::Makefile section:

realclean purge ::
	$(RM_F) $(DISTVNAME).tar$(SUFFIX)
	$(RM_F) MANIFEST.bak _build
	$(PERL) "-Ilib" "-MModule::Install::Admin" -e "remove_meta()"
	$(RM_RF) inc

reset :: purge

upload :: test dist
	cpan-upload -verbose $(DISTVNAME).tar$(SUFFIX)

grok ::
	perldoc Module::Install

distsign ::
	cpansign -s

catalyst_par :: all
	$(NOECHO) $(PERL) -Ilib -Minc::Module::Install -MModule::Install::Catalyst -e"Catalyst::Module::Install::_catalyst_par( '', 'LolCatalyst-Lite', { CLASSES => [], PAROPTS =>  {}, ENGINE => 'CGI', SCRIPT => '', USAGE => q## } )"
# --- Module::Install::AutoInstall section:

config :: installdeps
	$(NOECHO) $(NOOP)

checkdeps ::
	$(PERL) Makefile.PL --checkdeps

installdeps ::
	$(NOECHO) $(NOOP)

installdeps_notest ::
	$(NOECHO) $(NOOP)

upgradedeps ::
	$(PERL) Makefile.PL --config= --upgradedeps=Test::More,0.88,DBD::SQLite,0,Catalyst::Devel,0,Catalyst::Runtime,5.90006,Catalyst::Plugin::ConfigLoader,0,Catalyst::Plugin::Static::Simple,0,Catalyst::Action::RenderView,0,Const::Fast,0,Moose,0,namespace::autoclean,0,Config::General,0,Catalyst::View::TT,0,Catalyst::View::JSON,0,Catalyst::Helper::AuthDBIC,0,Catalyst::Test,0,Catalyst::Model::Adaptor,0,Catalyst::Plugin::Authentication,0,Catalyst::Plugin::Authorization::Roles,0,Catalyst::Plugin::Session,0,Catalyst::Plugin::Session::State::Cookie,0,Catalyst::Plugin::Session::Store::FastMmap,0,Catalyst::Authentication::Store::DBIx::Class,0,Catalyst::Authentication::Credential::HTTP,0,DBIx::Class::EncodedColumn,0

upgradedeps_notest ::
	$(PERL) Makefile.PL --config=notest,1 --upgradedeps=Test::More,0.88,DBD::SQLite,0,Catalyst::Devel,0,Catalyst::Runtime,5.90006,Catalyst::Plugin::ConfigLoader,0,Catalyst::Plugin::Static::Simple,0,Catalyst::Action::RenderView,0,Const::Fast,0,Moose,0,namespace::autoclean,0,Config::General,0,Catalyst::View::TT,0,Catalyst::View::JSON,0,Catalyst::Helper::AuthDBIC,0,Catalyst::Test,0,Catalyst::Model::Adaptor,0,Catalyst::Plugin::Authentication,0,Catalyst::Plugin::Authorization::Roles,0,Catalyst::Plugin::Session,0,Catalyst::Plugin::Session::State::Cookie,0,Catalyst::Plugin::Session::Store::FastMmap,0,Catalyst::Authentication::Store::DBIx::Class,0,Catalyst::Authentication::Credential::HTTP,0,DBIx::Class::EncodedColumn,0

listdeps ::
	@$(PERL) -le "print for @ARGV" 

listalldeps ::
	@$(PERL) -le "print for @ARGV" Test::More DBD::SQLite Catalyst::Devel Catalyst::Runtime Catalyst::Plugin::ConfigLoader Catalyst::Plugin::Static::Simple Catalyst::Action::RenderView Const::Fast Moose namespace::autoclean Config::General Catalyst::View::TT Catalyst::View::JSON Catalyst::Helper::AuthDBIC Catalyst::Test Catalyst::Model::Adaptor Catalyst::Plugin::Authentication Catalyst::Plugin::Authorization::Roles Catalyst::Plugin::Session Catalyst::Plugin::Session::State::Cookie Catalyst::Plugin::Session::Store::FastMmap Catalyst::Authentication::Store::DBIx::Class Catalyst::Authentication::Credential::HTTP DBIx::Class::EncodedColumn

