
include(language_name_for_file_conflict.pri)
INCLUDEPATH += /usr/local/include
DEPENDPATH += /usr/local/include
INCLUDEPATH += ./cld2/public ./cld2/internal ./
DEPENDPATH += ./cld2/public ./cld2/internal ./
QT   += core
CONFIG += c++11
LANGUAGE	= C++
DEFINES += NDEBUG THREAD_SAFE=1 TEMP_STORE=2 WFLAGS=-Wall
TEMPLATE = lib
TARGET = cld2
CONFIG += qt warn_on staticlib silence
#CONFIG += staticlib warn_off
CONFIG += release
# move only from includes dir!
header_files.path = ../include
INSTALLS += header_files

BINDIR = ../lib
target.path = $$BINDIR
INSTALLS += target


QMAKE_CFLAGS_RELEASE += -O1
QMAKE_CXXFLAGS_RELEASE += -O1
QMAKE_CPPFLAGS_RELEASE += -O1
CONFIG += QMAKE_CXXFLAGS_WARN_ON=-w
CONFIG += QMAKE_CFLAGS_WARN_ON=-w

# haha ..
cache()
MOC_DIR = build
RCC_DIR = build
OBJECTS_DIR = build


INCLUDEPATH += /usr/local/include
DEPENDPATH += /usr/local/include
