######################################################################
# Automatically generated by qmake (2.01a) Fri Aug 23 13:22:33 2013
######################################################################
CONFIG(debug, debug|release):    message(Debug build!)
CONFIG(release, debug|release):    message(Release build!)

QT -= gui

TARGET = bgsubtractorPlugin

CONFIG(debug, debug|release): TARGET = BgsubtractorPlugin_Debug
CONFIG(release, debug|release): TARGET = BgsubtractorPlugin_Release

TEMPLATE = lib
CONFIG += dll

DEFINES += BGSUBTRACTORPLUGIN_LIB

# Input
HEADERS += bgsubtractorplugin.h bgsubtractorplugin_global.h \
    package_bgs/StaticFrameDifferenceBGS.h \
    package_bgs/MixtureOfGaussianV2BGS.h
SOURCES += bgsubtractorplugin.cpp \
    package_bgs/StaticFrameDifferenceBGS.cpp \
    package_bgs/MixtureOfGaussianV2BGS.cpp

CONFIG(debug, debug|release): DESTDIR = $$PWD/../../../NoobaVSS_build/NoobaFE/Debug/plugins/
CONFIG(release, debug|release): DESTDIR = $$PWD/../../../NoobaVSS_build/NoobaFE/Release/plugins/

# include opencv
unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv
}

CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../../NoobaVSS_build/NoobaPluginAPI/Debug/ -lNoobaPluginAPId
CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../../NoobaVSS_build/NoobaPluginAPI/Release/ -lNoobaPluginAPI

INCLUDEPATH += $$PWD/../../../NoobaVSS/NoobaPluginAPI/
DEPENDPATH += $$PWD/../../../NoobaVSS/NoobaPluginAPI/
