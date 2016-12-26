import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import ProjetType 1.0
import "../js/jsfile.js" as Logic

Item{
    id: _autre;
    anchors.fill: parent;
    //enabled: enabledCheck.checked;

    ProjetModel{
        id: _pm;
    }
    property var d: Logic.nomP(_pm.nom());

    RowLayout {
            id: contentRow
            anchors.fill:parent
            anchors.margins: 8
            spacing: 16
            ColumnLayout {
                id: firstColumn
                Layout.minimumWidth: implicitWidth
                Layout.fillWidth: false
                RowLayout {
                    id: buttonrow
                    Text{
                        text: d[2];
                    }
                }
         }
    }

   }


