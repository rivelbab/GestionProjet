TEMPLATE = app

QT += qml quick widgets
QT += sql

SOURCES += main.cpp \
    src/projet.cpp \    
    src/database.cpp \     

RESOURCES += qml.qrc \
    qml/Myqrcfile.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

OTHER_FILES += \
	main.qml \
	qml/AboutDialog.qml \
	qml/AboutDialog2.qml \
	qml/Acceuil.qml \
	qml/Projet.qml \
	qml/Autre.qml

HEADERS += \    
    src/projet.h \    
    src/database.h \      
    
