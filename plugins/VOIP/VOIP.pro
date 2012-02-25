!include("../Common/retroshare_plugin.pri"): error("Could not include file ../Common/retroshare_plugin.pri")

CONFIG += qt uic qrc resources
CONFIG += mobility
MOBILITY = multimedia

QMAKE_CXXFLAGS *= -Wall

SOURCES = services/p3vors.cc \
			 services/rsvoipitems.cc \
			 gui/AudioInputConfig.cpp \
			 gui/AudioStats.cpp \
			 gui/AudioWizard.cpp \
			 gui/SpeexProcessor.cpp \
			 gui/audiodevicehelper.cpp \
          gui/VoipStatistics.cpp \
          VOIPPlugin.cpp 

HEADERS = services/p3vors.h \
			 services/rsvoipitems.h \
          gui/AudioInputConfig.h \
			 gui/AudioStats.h \
			 gui/AudioWizard.h \
			 gui/SpeexProcessor.h \
			 gui/audiodevicehelper.h \
          gui/VoipStatistics.h \
			 interface/rsvoip.h

FORMS   = gui/AudioInputConfig.ui \
          gui/AudioStats.ui \
          gui/VoipStatistics.ui \
			 gui/AudioWizard.ui

TARGET = VOIP

RESOURCES = gui/VOIP_images.qrc 

LIBS += -lspeex -lspeexdsp