#-------------------------------------------------
#
# Project created by Hand made e vi 2017-08-12T00:00:00
#
#-----------------------------test --------------------

lessThan(QT_VERSION, "5.5.1") {
    error("Qt 5.5.1 or above is required to build QCLD2.")
}

TEMPLATE = subdirs
SUBDIRS += hook \
      google_bridge \
      

OTHER_FILES += README.md
