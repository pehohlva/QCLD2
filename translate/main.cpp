
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
    QString test = QString("W ciągu rym zostały uwzględnione wszystkie teksty Dante nie zawarte w Vita Nova i Convivio, a zebrane według pewnych podstawowych tematów, które podkreślają styl poetycki inny autora: więc „opera młodzież”, które odnoszą się do Guittone d'Arezzo, ci „stilnoviste”, którego wzór jest reprezentowany przez Guinizelli i Cavalcanti, rymy „dziewięć”, które stanowią odejście od modelu stilnovistico, teksty o walce z Forese że opierają się one na poezji komiks realistyczny, doktrynalne piosenki i wreszcie tzw Rhymes „kamienista” charakteryzuje dall'asprezza styl i dedykowany do okrutnego kamiennej kobiety.");
        QTextStream qout(stdout);
    QString sayplease("QT is active , now test Google Language detect.... ");
    qout <<  sayplease << "\n";
    qout.flush();
    QTrlocale *casttr = new QTrlocale(2);
    //// casttr->wr_47854g76b64();
    /// DataLocaleProvider *datal = new DataLocaleProvider();
   ///  QStringList wo = datal->getidlocaleForScript(6);
    ///QLocale lista = datal->qlocaleFromLanguageUnique("GERMAN");
   qDebug() << casttr->getQlocaleFromText(test);

        qout << "------------------- "  <<  test  << "------------------------------------\n";
       
       qout << "----   hi    " << casttr->CodingCld(test) <<   "   ---\n";
       
        qout << "-------------------------------------------------------\n";

       ///// casttr->ReadFile("./test_shuffle_1000_48_666.utf8");


    return 0;
}
