TEMPLATE = lib
CONFIG += dynamiclib plugin
CONFIG += qt
QT += network
#LIBS += -llinphone -l:libmediastreamer_base.so.3 -l:libmediastreamer_voip.so.3 -lasound
LIBS += -lasound -lmediastreamer -lmbedtls -lbellesip -lbelr -lbctoolbox -llinphone

HEADERS += \
DtmfDetector.hpp  \
DtmfGenerator.hpp \
types_cpp.hpp    \


SOURCES += \
detect-au.cpp    \
DtmfDetector.cpp \
DtmfGenerator.cpp \
#example.cpp      \


include(../root.pri)


TARGET = $${PRJ_LIB}/dtmf-cpp


VPATH += \
	include \
	src

INCLUDEPATH += \
	include \
	src
