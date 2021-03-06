QT       += core
cache()
QT       -= gui
TARGET = tra
CONFIG   += console debug
CONFIG   -= app_bundle
TEMPLATE = app
HEADERS += \
    qtrlocale.h \
    datalanguageprovider.h
SOURCES += main.cpp \
    qtrlocale.cpp \
    datalanguageprovider.cpp
INCLUDEPATH += ../include ../google_bridge/cld2/public ../google_bridge/cld2
INCLUDEPATH += /usr/local/include
LIBS += -L/usr/local/lib -lqcld2
DEFINES += DQTFRAMEWORKACTIV=01 CLD_WINDOWS=01


CONFIG += c++11
CONFIG += QMAKE_CXXFLAGS_WARN_ON=-w QMAKE_CFLAGS_WARN_ON=-w
MOC_DIR = build
RCC_DIR = build
OBJECTS_DIR = build

DISTFILES += \
    note
