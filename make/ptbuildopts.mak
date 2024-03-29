# This file is automatically generated by autoconf
#

ifndef PTLIBDIR
	echo "No PTLIBDIR environment variable defined!"
	echo "You need to define PTLIBDIR!"
	echo "Try something like:"
	echo "PTLIBDIR = $(HOME)/ptlib"
	exit 1
endif

DEV_PLUGIN_DIR  = ptlib-2.6.7/devices

MACHTYPE   = x86
OSTYPE	   = Darwin
OSRELEASE  = 1008

STDCCFLAGS    +=  -DPTRACING=1 -D_REENTRANT  -I/opt/local/include      -fno-exceptions 
STDCXXFLAGS   +=  -felide-constructors -Wreorder 
OPTSTDCCFLAGS += 
LDFLAGS	      += 
ENDLDLIBS     +=  -lpthread -lsasl2 -lldap -llber -lldap_r -L/opt/local/lib -lssl -lcrypto -lz   -lexpat  -lodbc  -lresolv -lc
DEBUG_FLAG    += -g3 -ggdb -O0

AR		= ar
CC		= gcc
CXX		= g++

USE_GCC         = yes
USE_PCH		= 1
HAS_IPV6        = 1
HAS_RESOLVER	= 1
HAS_OPENSSL	= 1
HAS_OPENLDAP	= 1
HAS_SASL	= 
HAS_SASL2	= 1
HAS_EXPAT	= 1
HAS_REGEX	= 1
HAS_SDL		= 
HAS_PLUGINS	= 1
HAS_SAMPLES	= 
HAS_VIDEO_CAPTURE = 1

HAS_TTS		= 1
HAS_ASN		= 1
HAS_STUN	= 1
HAS_PIPECHAN	= 1
HAS_DTMF	= 1
HAS_WAVFILE	= 1
HAS_SOCKS	= 1
HAS_FTP		= 1
HAS_SNMP	= 1
HAS_TELNET	= 1
HAS_REMCONN	= 1
HAS_SERIAL	= 1
HAS_POP3SMTP	= 1
HAS_AUDIO	= 1
HAS_VIDEO	= 1
HAS_SHM_VIDEO   = 1
HAS_VFW_CAPTURE = 

HAS_VXML	= 1
HAS_JABBER	= 1
HAS_XMLRPC	= 1
HAS_SOAP	= 1
HAS_URL		= 1
HAS_HTTP	= 1
HAS_HTTPFORMS   = 1
HAS_HTTPSVC	= 1
HAS_CONFIG_FILE = 1
HAS_SOCKAGG	= @HAS_SOCKAGG@
HAS_VIDFILE	= 1
HAS_FFVDEV	= 1
HAS_ODBC        = 1
HAS_DIRECTSHOW  = 
HAS_DIRECTSOUND = 

SHAREDLIBEXT	= dylib

P_STATIC_LDFLAGS   = 
P_STATIC_ENDLDLIBS = 


