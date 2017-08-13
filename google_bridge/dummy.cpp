#include "dummi.h"
#include <QDateTime>

dummi::dummi( const QString today )
{

}

/* time null unix time long nummer */
uint dummi::QTime_Null()
{
    QDateTime timer1( QDateTime::currentDateTime() );
    return timer1.toTime_t();
}
