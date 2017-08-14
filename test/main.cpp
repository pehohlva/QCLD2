#include <stdio.h>
#include <qlist.h>
#include <qhash.h>
#include <map>

/// use function in lib ony this 2 file
#include "compact_lang_det.h"
#include "encodings.h"
/// use function in lib ony this 2 file


#include <iostream>
// uncomment to disable assert()
// #define NDEBUG
#include <cassert>

#ifdef DQTFRAMEWORKACTIV

#define CONCAT_(x,y) x##y
#define CONCAT(x,y) CONCAT_(x,y)

#define CHECKTIME(x)  \
    QElapsedTimer CONCAT(sb_, __LINE__); \
    CONCAT(sb_, __LINE__).start(); \
    x \
    qDebug() << __FUNCTION__ << ":" << __LINE__ << " Elapsed time: " <<  CONCAT(sb_, __LINE__).elapsed() << " ms.";
    
    
 #endif   

#ifdef CLD_WINDOWS
/// assert(false);
/// cassert(false);
#endif

#ifdef DQTFRAMEWORKACTIV
#include <cmath>
#include <typeinfo>
#include <QObject>
#include <QString>
#include <QBuffer>
#include <QMimeDatabase>
#include <QMimeType>
#include <QLocale>
#include <QTextStream>
#include <QTextStream>
#include <QTextStream>
#include <QTextStream>
#include <QLocale>
#include <QDate>
#include <QChar>
#include <qlist.h>
#include <qhash.h>
#include <qfile.h>
#include <qbytearray.h>
#include <qstring.h>
#include <qchar.h>
#include <qvector.h>
#include <qdebug.h>
#include <QStringList>
#include <QElapsedTimer>
  std::ostream& operator<<(std::ostream& str, const QString& string) {
    return str << string.toStdString();
}
#endif

// gcc -I. -L. -o main.cpp -lcld2
// gcc -I. -L. -o main.cpp -lcld

/* https://github.com/CLD2Owners/cld2
 * same as chromonium language detect  */

const char* kTeststr_en =
  "confiscation of goods is assigned as the penalty part most of the courts "
  "consist of members and when it is necessary to bring public cases before a "
  "jury of members two courts combine for the purpose the most important cases "
  "of all are brought jurors or";
  
  
  
 const char* kTeststr_it = 
  "Canta la mamma:"
"“Scoppietta la fiamma,"
"chiudi gli occhietti,"
"la luna è sui tetti."
"Sui tetti è il barbagianni,"
"che è vecchio di cent’anni,"
"sui tetti è il gatto nero,"
"che sta sopra pensiero."
"Dall’alto del camino"
"s’affaccia un topolino,"
"ma vede il gatto e scappa"
"giù dentro la cappa."
"Si salva il topolino,"
"e dorme il mio bambino”.";

// UTF8 constants. Use a UTF-8 aware editor for this file
const char* kTeststr_ks =
  "नेपाल एसिया "
  "मंज अख मुलुक"
  " राजधानी काठ"
  "माडौं नेपाल "
  "अधिराज्य पेर"
  "ेग्वाय "
  "दक्षिण अमेरि"
  "का महाद्वीपे"
  " मध् यक्षेत्"
  "रे एक देश अस"
  "् ति फणीश्वर"
  " नाथ रेणु "
  "फिजी छु दक्ष"
  "िण प्रशान् त"
  " महासागर मंज"
  " अख देश बहाम"
  "ास छु केरेबि"
  "यन मंज "
  "अख मुलुख राज"
  "धानी नसौ सम्"
  " बद्घ विषय ब"
  "ुरुंडी अफ्री"
  "का महाद्वीपे"
  " मध् "
  "यक्षेत्रे दे"
  "श अस् ति सम्"
  " बद्घ विषय";
  
  
  using namespace std; 
  using namespace CLD2; 
  
  

  
  /*      
    /*  const char* buffer,
                        int buffer_length,
                        bool is_plain_text,
                        bool* is_reliable,
                        int* valid_prefix_bytes) { 
   Language DetectLanguageCheckUTF8(
                          const char* buffer,
                          int buffer_length,
                          bool is_plain_text,
                          bool* is_reliable,
                          int* valid_prefix_bytes);
  https://github.com/CLD2Owners/cld2 using namespace CLD2; 
   * nm -dynamic libcld2.a
QString QString::fromLocal8Bit
QString qs;
std::string current_locale_text = qPrintable(qs);
std::string utf8_text = qs.toUtf8().constData();
QString qstr;
std::string str = qstr.toStdString();
See also toLatin1(), toUtf8(), toLocal8Bit(), and QByteArray::toStdString().
See also fromUtf8(), toUtf8(), toLatin1(), toLocal8Bit(), QTextCodec, fromUcs4(), and toWCharArray().
* 
* 
*   // Scan interchange-valid UTF-8 bytes and detect most likely language
  // If the input is in fact not valid UTF-8, this returns immediately with
  // the result value UNKNOWN_LANGUAGE and is_reliable set to false.
  //
  // In all cases, valid_prefix_bytes will be set to the number of leading
  // bytes that are valid UTF-8. If this is < buffer_length, there is invalid
  // input starting at the following byte.
  Language DetectLanguageCheckUTF8(
                          const char* buffer,
                          int buffer_length,
                          bool is_plain_text,
                          bool* is_reliable,
                          int* valid_prefix_bytes);
   Language DetectLanguage(
                          const char* buffer,
                          int buffer_length,
                          bool is_plain_text,
                          bool* is_reliable);

*/

int main(int argc, char **argv) {
	
	std::map < std::string, int, std::greater < std::string > > langhere;
	++langhere[kTeststr_ks];
	++langhere[kTeststr_it];
	++langhere[kTeststr_en];
	
const char* src;
bool is_plain_text = true;
bool is_reliable =false;
int valid_prefix_bytes = 0;
	
	
#ifdef DQTFRAMEWORKACTIV
    QTextStream out(stdout);
    QString sayplease("QT is active , now test Google Language detect.... ");
    out <<  sayplease << "\n";
    ////  out <<  QString::fromLocal8Bit(kTeststr_ks) << "\n";
    out.flush();

	
     std::map < std::string, int > ::const_iterator iter;
  for (iter = langhere.begin(); iter != langhere.end(); iter++) {
	  
       CHECKTIME( 
             const QString xnow = QString::fromStdString(iter->first);
             src = qPrintable(xnow);
            Language lang = DetectLanguage(src,strlen(src),is_plain_text,&is_reliable);
            std::cout << "-------------------------------------------------------\n";
            std::cout << "Chck text:\n";
		    std::cout << iter->first << "\n";
		    std::cout << "Result say:" << LanguageName(lang) << "\n";
		    std::cout << "-------------------------------------------------------\n";
	   )  
  }
  
             std::cout << "Single time only one ... after job ... \n";
#endif
#ifdef DQTFRAMEWORKACTIV
CHECKTIME( 
#endif
    src = kTeststr_ks;
    Language lang = DetectLanguageCheckUTF8(src, strlen(src),is_plain_text,&is_reliable,&valid_prefix_bytes);
    printf("LANG=%s\n", LanguageName(lang));
#ifdef DQTFRAMEWORKACTIV 
)
#endif

       std::cout << "-------------------------------------------------------\n";
       
       std::cout << "----Goodby  next time we translate this chunk ..---\n";
       
       std::cout << "-------------------------------------------------------\n";


    return 0;
}
