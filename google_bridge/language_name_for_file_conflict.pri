#
#
# resume on https://github.com/CLD2Owners/cld2/blob/master/internal/compile_libs.sh
# git clone https://github.com/CLD2Owners/cld2
#  this file give error if take false data from int uint32 on /usr/local/include !!
#    $$PWD/cld2/internal/scoreonescriptspan.h \
#    $$PWD/cld2/internal/scoreonescriptspan.cc \
#
#
#

header_files.files = $$HEADERS
header_files.files += $$PWD/cld2/public/*
header_files.files += $$PWD/datalanguageprovider.h
header_files.files += $$PWD/qtrlocale.h

DEPENDPATH += $$PWD/cld2/internal
INCLUDEPATH += $$PWD/cld2/public
INCLUDEPATH += /usr/local/include
DEPENDPATH += /usr/local/include

SOURCES += $$PWD/qtrlocale.cpp  \
   $$PWD/datalanguageprovider.cpp \
   $$PWD/cld2/internal/scoreonescriptspan.cc \
   $$PWD/cld2/internal/cldutil.cc  \
   $$PWD/cld2/internal/cldutil_shared.cc  \
   $$PWD/cld2/internal/compact_lang_det.cc   \
   $$PWD/cld2/internal/compact_lang_det_hint_code.cc \
  $$PWD/cld2/internal/compact_lang_det_impl.cc   \
  $$PWD/cld2/internal/debug.cc \
  $$PWD/cld2/internal/fixunicodevalue.cc  \
  $$PWD/cld2/internal/generated_entities.cc   \
  $$PWD/cld2/internal/generated_language.cc  \
  $$PWD/cld2/internal/generated_ulscript.cc  \
  $$PWD/cld2/internal/getonescriptspan.cc \
  $$PWD/cld2/internal/lang_script.cc \
  $$PWD/cld2/internal/offsetmap.cc  \
  $$PWD/cld2/internal/tote.cc \
  $$PWD/cld2/internal/utf8statetable.cc  \
  $$PWD/cld2/internal/cld_generated_cjk_uni_prop_80.cc \
  $$PWD/cld2/internal/cld2_generated_cjk_compatible.cc  \
  $$PWD/cld2/internal/cld_generated_cjk_delta_bi_4.cc \
  $$PWD/cld2/internal/generated_distinct_bi_0.cc  \
  $$PWD/cld2/internal/cld2_generated_quadchrome_2.cc \
  $$PWD/cld2/internal/cld2_generated_deltaoctachrome.cc \
  $$PWD/cld2/internal/cld2_generated_distinctoctachrome.cc \
  $$PWD/cld2/internal/cld_generated_score_quad_octa_2.cc

  HEADERS += $$PWD/qtrlocale.h  \
   $$PWD/datalanguageprovider.h \
  $$PWD/cld2/internal/scoreonescriptspan.h \
  $$PWD/cld2/internal/cldutil.h \
  $$PWD/cld2/internal/cldutil_shared.h  \
  $$PWD/cld2/internal/compact_lang_det_hint_code.h \
  $$PWD/cld2/internal/compact_lang_det_impl.h   \
  $$PWD/cld2/internal/debug.h \
  $$PWD/cld2/internal/fixunicodevalue.h  \
  $$PWD/cld2/internal/generated_language.h  \
  $$PWD/cld2/internal/generated_ulscript.h  \
  $$PWD/cld2/internal/getonescriptspan.h \
  $$PWD/cld2/internal/lang_script.h \
  $$PWD/cld2/internal/offsetmap.h  \
  $$PWD/cld2/internal/tote.h \
  $$PWD/cld2/internal/utf8statetable.h  \
  $$PWD/cld2/public/encodings.h  \
  $$PWD/cld2/public/compact_lang_det.h
