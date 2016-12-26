/*-------------------------------------- *
  --    GESTION DE PROJET DE GEJ      -- *
  --    Developpee par Rivelnet       -- *
  --    Version 1.2/ 09/12/2014       -- *
  --    main.qml                      -- *
  --------------------------------------*/

import QtQuick 2.2
import QtQuick.Dialogs 1.2

MessageDialog {
    icon: StandardIcon.Information ;
    text: qsTr("A propos de GESTION DE PROET");
    detailedText: qsTr("GESTION DE PROJET est un outil
d'aide a la gestion de projet de GEJ developpe par Rivelnet,
jeune developpeur africain.");
    title: qsTr("A propos de GESTION DE PROJET");
}
