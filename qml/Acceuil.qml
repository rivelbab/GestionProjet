/*-------------------------------------- *
  --    GESTION DE PROJET DE GEJ      -- *
  --    Developpee par Rivelnet       -- *
  --    Version 1.2/ 09/12/2014       -- *
  --    Acceuil.qml                   -- *
  --------------------------------------*/

import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0;
import QtQuick.Dialogs 1.2

Item{
    id: _acceuilPage;
    anchors.fill: parent;

    //***************************************
    //appel des fichiers externes

    //fenetre de definition du nouveau projet
    NewProjet{id:_newProjet; }

    //fenetre de gestion des sessions
    AboutSession{id:aboutSession;}

    Preference{id: preference;}

    //fenetre d'ouverture du projet existant
    FileDialog{
        id:_openProjet;
        visible: false;
        //nameFilters: ["All files (*)" ];
        nameFilters: ["Pdf files (*.pdf)", "Doc files (*.doc *.docx)" ];
        onAccepted: {
            console.log("Accepted: " + fileUrls)
            for (var i = 0; i < fileUrls.length; ++i)
                Qt.openUrlExternally(fileUrls[i])
           }
    }

    //****************************************
    //gestion des actions    

    //action du bouton sessions
    Action{
        id:_sessionAction;
        onTriggered: aboutSession.open();
    }

    //action ouvrir un projet existant
    Action{
        id:_ouvrirAction;
        onTriggered: _openProjet.visible =! _openProjet.visible;
    }

    //action du bouton Nouveau Projet
    Action{
        id:_newProjetAction;
        onTriggered: _newProjet.visible = !_newProjet.visible;
    }

    //conteneur principal
    RowLayout {
            id: _mainRow1;

            anchors{fill:parent;margins: 8;}
            spacing: 10;
            //colone de gauche contenant les deux photos
            ColumnLayout {
                id: _column1;

                Layout.minimumWidth: implicitWidth;
                anchors {
                    top: parent.top;
                    bottom: parent.bottom;
                    topMargin: 50;
               }
                Layout.fillWidth: false;
                //conteneur d'image
                Rectangle{
                    id:_rect1;
                    width: 300;
                    height: 320;
                    color:"white";
                    border{width:1.5;color:"green"}

                    Image{
                        id: _pro2;
                        source:"qrc:///images/projet2.png";
                        anchors{fill: parent;margins: 2}
                        smooth: true;
                    }
                }
            }
            //colonne du milieu contenant les deux boutons
            ColumnLayout{
                id: _Column2
                spacing: 25;
                anchors {
                    top: parent.top;
                    bottom: parent.bottom;
                    topMargin: 50;
               }
               Layout.fillWidth: true;

               //bouton nouveau projet
                Button{
                    id:_b1;

                    tooltip: qsTr("definir un nouveau projet");

                    action: _newProjetAction;

                    style: ButtonStyle{
                        background: Rectangle{
                            id:_background;
                            implicitHeight: 140;
                            implicitWidth: 180;
                            radius: 15;
                            border.color: _b1.pressed?"red":"green";
                            border.width: 1.5;
                            color:"black";
                            opacity:_b1.pressed? 0.8:0.9;
                        }
                        label: Rectangle{
                            implicitHeight: 140;
                            implicitWidth: 180;
                            radius: 15;
                            color:"transparent"
                            Column{
                                spacing: 8;
                                anchors.centerIn: parent;
                                Image {
                                    source: "qrc:///images/new.svg";
                                    smooth: true;
                                }
                                Text {
                                    text: qsTr("Nouveau projet ");
                                    color:_b1.pressed?"darkgrey":"white";
                                    font{
                                        bold: _b1.pressed?false:true;
                                        pointSize: _b1.hovered? 14 : 13;
                                    }
                                }
                            }
                        }
                    }
                }
                //bouton sessions
                Button{
                    id: _b2;
                    tooltip: qsTr("Gerer les sessions");

                    action:_sessionAction;

                    style: ButtonStyle{
                        background: Rectangle{
                            implicitHeight:140;
                            implicitWidth: 180;
                            radius: 15;
                            color:"black";
                            border.color: _b2.pressed?"red":"green";
                            border.width: 1.5;
                            opacity: _b2.pressed?0.8:0.9;
                        }
                        label: Rectangle{
                            implicitHeight: 140;
                            implicitWidth: 180;
                            radius: 15;
                            color:"transparent"
                            Column{
                                spacing: 8;
                                anchors.centerIn: parent;
                                Image {
                                    source: "qrc:///images/session.svg";
                                    smooth: true;
                                }
                                Text {
                                    text: qsTr("   Sessions    ");
                                    color: _b2.pressed?"darkgrey": "white";
                                    font{
                                        bold: _b2.pressed?false:true;
                                        pointSize: _b2.hovered?14:13;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            //colonne de droite contenant deux boutons
            ColumnLayout{
                id: _column3
                spacing: 25;
                anchors {
                    top: parent.top;
                    bottom: parent.bottom;
                    topMargin: 50;
               }
               Layout.fillWidth: true;
               //bouton ouvrir un projet
                Button{
                    id:_b3;

                    action: _ouvrirAction;

                    tooltip: qsTr("ouvrir un projet existant");

                    style: ButtonStyle{
                        background: Rectangle{
                            implicitHeight: 140;
                            implicitWidth: 180;
                            radius: 15;
                            border.color: _b3.pressed?"red":"green";
                            border.width: 1.5;
                            color:"black";
                            opacity: _b3.pressed?0.8:0.9;
                        }
                        label: Rectangle{
                            implicitHeight: 140;
                            implicitWidth: 180;
                            radius: 15;
                            color:"transparent"
                            Column{
                                spacing: 8;
                                anchors.centerIn: parent;
                                Image {
                                    source: "qrc:///images/open.svg";
                                    smooth: true;
                                }
                                Text {
                                    text: qsTr("Ouvrir projet  ");
                                    color:_b3.pressed?"darkgrey":"white";
                                    font{
                                        bold: _b3.pressed?false:true;
                                        pointSize: _b3.hovered?14:13;
                                    }
                                }
                            }
                        }
                    }
                }
                //bouton preferences
                Button{
                    id:_b4;

                    tooltip: qsTr("gerer les preferences du logiciel");
                    activeFocusOnPress : true;

                    menu: Menu{
                        title: qsTr("Preference");
                        style: _menuStyle;
                        MenuItem{
                            text:"Changer la couleur";
                        }
                        MenuItem{
                            text:"Redimentionner";
                        }
                        MenuItem{
                            text:"Changer la langue";
                        }
                        MenuItem{
                            text:"Gerer les comptes";
                        }
                        MenuItem{
                            text:"Gerer les Plug-ins";
                        }
                    }

                    style: ButtonStyle{
                        background: Rectangle{
                            implicitHeight:140;
                            implicitWidth: 180;
                            radius: 15;
                            color:"black";
                            border.color: _b4.pressed?"red":"green";
                            border.width: 1.5;
                            opacity:_b4.pressed?0.8:0.9;
                        }
                        label: Rectangle{
                            implicitHeight: 140;
                            implicitWidth: 180;
                            radius: 15;
                            color:"transparent"
                            Column{
                                spacing: 8;
                                anchors.centerIn: parent;
                                Image {
                                    source: "qrc:///images/execution.svg";
                                    smooth: true;
                                }
                                Text {
                                    text: qsTr("Preferences    ");
                                    color:_b4.pressed?"darkgrey":"white";
                                    font{
                                        bold: _b4.pressed?false:true;
                                        pointSize: _b4.hovered? 14: 13;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    property Component _menuStyle: MenuStyle{
        frame: Rectangle{
            id:_frame;
            implicitHeight: 100;
            implicitWidth: 250;
            color: "white";
            opacity: 0.8;
        }
        submenuOverlap: 2;
        submenuPopupDelay: 2;
    }
   }//fin Item


