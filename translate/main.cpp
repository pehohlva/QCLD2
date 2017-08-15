
/// use function in lib ony this 2 file

#include "qtrlocale.h"
#include "datalanguageprovider.h"
/// use function in lib ony this 2 file

std::ostream& operator<<(std::ostream& str, const QString& string) {
  return str << string.toStdString();
}



  using namespace std; 






/*      for (int x = 0; x < nox; x++ ) {

          /// qDebug() << array[x];
       }
 */
int main(int argc, char **argv) {
    QString test = QString("డ్డి 'ఫైలీన్ తుఫాన్..ప్రజలు అప్రమత్తంగా ~ వెంటనే సమావేశ పర్చాలి -");
    QTextStream qout(stdout);
    QString sayplease("QT is active , now test Google Language detect.... ");
    qout <<  sayplease << "\n";
    qout.flush();
    QTrlocale *casttr = new QTrlocale(2);
    //// casttr->wr_47854g76b64();
    /// DataLocaleProvider *datal = new DataLocaleProvider();
   ///  QStringList wo = datal->getidlocaleForScript(6);
    ///QLocale lista = datal->qlocaleFromLanguageUnique("GERMAN");
    /// qDebug() << lista;

       std::cout << "-------------------------------------------------------\n";
       
       std::cout << "----   hi       ---\n";
       
       std::cout << "-------------------------------------------------------\n";

       casttr->ReadFile("./test_shuffle_1000_48_666.utf8");


    return 0;
}
