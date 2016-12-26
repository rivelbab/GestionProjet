/*-------------------------------------- *
  --    GESTION DE PROJET DE GEJ      -- *
  --    Developpee par Rivelnet       -- *
  --    Version 1.2/ 09/12/2014       -- *
  --    AboutSession.qml              -- *
  --------------------------------------*/

import QtQuick 2.2
import QtQuick.Dialogs 1.2

MessageDialog {
    icon: StandardIcon.Information ;
    text: qsTr("Session par defaut");
    detailedText: qsTr("la gestion des sessions n'est pas disponible avec cette version.");
    title: "GEJ";
}
