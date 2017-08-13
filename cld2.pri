#
#
# resume on https://github.com/CLD2Owners/cld2/blob/master/internal/compile_libs.sh
# git clone https://github.com/CLD2Owners/cld2
#
#
#
#
#
#

DEPENDPATH += $$PWD/internal
INCLUDEPATH += $$PWD/public
INCLUDEPATH += /usr/local/include
DEPENDPATH += /usr/local/include
SOURCES += $$PWD/internal/cldutil.cc  \
   $$PWD/internal/cldutil_shared.cc  \
   $$PWD/internal/compact_lang_det.cc   \
   $$PWD/internal/compact_lang_det_hint_code.cc \
  $$PWD/internal/compact_lang_det_impl.cc   \
  $$PWD/internal/debug.cc fixunicodevalue.cc  \
  $$PWD/internal/generated_entities.cc   \
  $$PWD/internal/generated_language.cc  \
  $$PWD/internal/generated_ulscript.cc  \
  $$PWD/internal/getonescriptspan.cc \
  $$PWD/internal/lang_script.cc \
  $$PWD/internal/offsetmap.cc  \
  $$PWD/internal/scoreonescriptspan.cc \
  $$PWD/internal/tote.cc utf8statetable.cc  \
  $$PWD/internal/cld_generated_cjk_uni_prop_80.cc \
  $$PWD/internal/cld2_generated_cjk_compatible.cc  \
  $$PWD/internal/cld_generated_cjk_delta_bi_4.cc 
  $$PWD/internal/generated_distinct_bi_0.cc  \
  $$PWD/internal/cld2_generated_quadchrome_2.cc \
  $$PWD/internal/cld2_generated_deltaoctachrome.cc \
  $$PWD/internal/cld2_generated_distinctoctachrome.cc \
  $$PWD/internal/cld_generated_score_quad_octa_2.cc


  HEADERS += $$PWD/internal/cldutil.h  \
  $$PWD/internal/cldutil_shared.h  \
  $$PWD/internal/compact_lang_det.h   \
  $$PWD/internal/compact_lang_det_hint_code.h \
  $$PWD/internal/compact_lang_det_impl.h   \
  $$PWD/internal/debug.h fixunicodevalue.h  \
  $$PWD/internal/generated_entities.h   \
  $$PWD/internal/generated_language.h  \
  $$PWD/internal/generated_ulscript.h  \
  $$PWD/internal/getonescriptspan.h \
  $$PWD/internal/lang_script.h \
  $$PWD/internal/offsetmap.h  \
  $$PWD/internal/scoreonescriptspan.h \
  $$PWD/internal/tote.h utf8statetable.h  \
  $$PWD/internal/cld_generated_cjk_uni_prop_80.h 
  $$PWD/internal/cld2_generated_cjk_compatible.h  \
  $$PWD/internal/cld_generated_cjk_delta_bi_4.h  \
  $$PWD/internal/generated_distinct_bi_0.h  \
  $$PWD/internal/cld2_generated_quadchrome_2.h \
  $$PWD/internal/cld2_generated_deltaoctachrome.h \
  $$PWD/internal/cld2_generated_distinctoctachrome.h \
  $$PWD/internal/cld_generated_score_quad_octa_2.h

  HEADERS += $$PWD/public/encodings.h  \
       $$PWD/public/compact_lang_det.h
  
  
  
  
