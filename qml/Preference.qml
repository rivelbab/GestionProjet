import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0
import "../js/jsfile.js" as Logic
import ProjetType 1.0

Window{
    id:_root;
    visible: false;
    width:250;
    height: 150;
    flags: Qt.Dialog;
    Rectangle{
        width: parent.width;
        height: parent.height;
        color:"black";

        ColumnLayout{
            Layout.fillWidth: true;
            anchors{fill: parent;margins: 20}
            spacing: 15;
            TextField{
                Layout.fillWidth: true;
                placeholderText: "Login";
            }
            TextField{
                Layout.fillWidth: true;
                placeholderText: "Password";
            }
            RowLayout{
                Layout.fillHeight: true;
                spacing: 10;
                Button{
                    id:_b1;
                    text:" Annuler ";
                    tooltip: "fermer la fenetre";
                }
                Button{
                    id:_b2;
                    text:"Connexion";
                    tooltip: "connectez vous ici"
                }
            }
        }
    }

}
