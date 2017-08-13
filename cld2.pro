

#!include($$PWD/cld2.pri ) {
#message( "cld2.pri not found... " )
#}


QT   += core
QT   -= gui
CONFIG += c++11
LANGUAGE	= C++
DEFINES += NDEBUG THREAD_SAFE=1 TEMP_STORE=2 WFLAGS=-Wall

TEMPLATE = lib
TARGET = cld2
CONFIG += qt warn_on staticlib
#CONFIG += staticlib warn_off
CONFIG += release
# move only from includes dir!  # haha ..  $$PWD/internal/cld_generated_cjk_uni_prop_80.cc \
#header_files.files = $$HEADERS
#header_files.files += ../../3rdparty/tool/include/*
#header_files.path = ../../include
#INSTALLS += header_files

BINDIR = lib
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


DEPENDPATH += $$PWD/internal
INCLUDEPATH += $$PWD/public
INCLUDEPATH += /usr/local/include
DEPENDPATH += /usr/local/include

SOURCES += $$PWD/internal/cldutil.cc  \
   $$PWD/internal/cld_generated_cjk_uni_prop_80.cc \
   $$PWD/internal/cldutil_shared.cc  \
   $$PWD/internal/compact_lang_det.cc   \
   $$PWD/internal/compact_lang_det_hint_code.cc \
  $$PWD/internal/compact_lang_det_impl.cc   \
  $$PWD/internal/debug.cc \
  $$PWD/internal/fixunicodevalue.cc  \
  $$PWD/internal/generated_entities.cc   \
  $$PWD/internal/generated_language.cc  \
  $$PWD/internal/generated_ulscript.cc  \
  $$PWD/internal/getonescriptspan.cc \
  $$PWD/internal/lang_script.cc \
  $$PWD/internal/offsetmap.cc  \
  $$PWD/internal/scoreonescriptspan.cc \
  $$PWD/internal/tote.cc \
  $$PWD/internal/utf8statetable.cc  \
  $$PWD/internal/cld2_generated_cjk_compatible.cc  \
  $$PWD/internal/cld_generated_cjk_delta_bi_4.cc \
  $$PWD/internal/generated_distinct_bi_0.cc  \
  $$PWD/internal/cld2_generated_quadchrome_2.cc \
  $$PWD/internal/cld2_generated_deltaoctachrome.cc \
  $$PWD/internal/cld2_generated_distinctoctachrome.cc \
  $$PWD/internal/cld_generated_score_quad_octa_2.cc \
  dummi.cpp

  HEADERS += $$PWD/internal/cldutil.h  \
  $$PWD/internal/cldutil_shared.h  \
  $$PWD/internal/compact_lang_det_hint_code.h \
  $$PWD/internal/compact_lang_det_impl.h   \
  $$PWD/internal/debug.h  \
  $$PWD/internal/fixunicodevalue.h  \
  $$PWD/internal/generated_language.h  \
  $$PWD/internal/generated_ulscript.h  \
  $$PWD/internal/getonescriptspan.h \
  $$PWD/internal/lang_script.h \
  $$PWD/internal/offsetmap.h  \
  $$PWD/internal/scoreonescriptspan.h \
  $$PWD/internal/tote.h \
  $$PWD/internal/utf8statetable.h  \
  $$PWD/public/encodings.h  \
  $$PWD/public/compact_lang_det.h \
  dummi.h
