/*-------------------------------------- *
  --    GESTION DE PROJET DE GEJ      -- *
  --    Developpee par Rivelnet       -- *
  --    Version 1.2/ 09/12/2014       -- *
  --    main.qml                      -- *
  --------------------------------------*/

import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0

//fenetre de crreation du nouveau projet
Window{
    id: _root;

    visible: false;
    width: 700;
    height: 600;
    maximumWidth: 810;
    maximumHeight: 410;
    title: "Nouveau Projet";
    flags: Qt.Dialog;
    color:"green";

    //chargement d'une police personalisee
    FontLoader{
        id:_myFont;
        source: "qrc:///images/ab2.ttf";
    }

    //conteneur d'en tete de la page
    Rectangle{
        id: _header;
        width: parent.width;
        height: parent.height/6+10;
        anchors.top: parent.top;
        color:"#154B1A";
        Text{
            text:qsTr("Definition du projet");
            font{
                family:_myFont.name;
                pointSize: 28;
            }
            color:"lightyellow";
            anchors {top:parent.top;right: parent.right;rightMargin: 5;}
        }
        Button{
            id:_m;
            tooltip: qsTr("menu");
            anchors{right: parent.right;bottom: parent.bottom;}
            menu:Menu{
                title: qsTr("menu");
                MenuItem{text:"ajouter"}
                MenuItem{text:"supprimer"}
                MenuItem{text:"quitter"}
            }

            style: ButtonStyle{
                background: Rectangle{
                    id:_bg1;
                    implicitWidth: 55;
                    implicitHeight: 35;
                    color:"transparent";
                }
                label: Rectangle{
                    implicitWidth: 55;
                    implicitHeight: 35;
                    color:_m.pressed?"green":"transparent";
                    Image{
                        source: "qrc:///images/menu2.svg";
                        anchors{
                            fill: parent;
                            margins: _m.hovered?5:2;
                        }
                    }
                }
            }
        }
    }

    TabView{
        id: _tableview;
        anchors.fill: parent;
        tabPosition: Qt.TopEdge;
        anchors{topMargin: 30;}
        Layout.row: 5;
        Layout.columnSpan: 3;
        Layout.fillWidth: true;

        style: _tabViewStyle;

        Tab{
            id: _acceuilPage;
            title: qsTr("Presentation\nPromoteur");
            PresentationPromoteur{anchors.fill: parent;}
        }
        Tab{
            id: _projetPage;
            title: qsTr("Resume Projet");
            ResumeProjet{anchors.fill: parent;}
        }
        Tab{
            id: _autrePage;
            title: qsTr("Planification");
            Planification{anchors.fill: parent;}
        }
    }

    //*******************************************
    //personalisation des onglets

    //style des tables
    property Component _tabViewStyle: TabViewStyle {

           //tabsAlignment : Qt.AlignHCenter;
           frameOverlap: 0;
           tabOverlap: 4;
           tab: Rectangle {
               width:100;
               height: 45;
               color: "black";
               opacity: styleData.selected? 0.9: 0.7;
               border.color: styleData.hovered? "darkgrey": "green";              
               implicitWidth: Math.max(text.width + 40)
               implicitHeight: 25
               radius: 8;
               Text {
                   id: text;
                   anchors.centerIn: parent
                   text: styleData.title
                   color: styleData.selected ? "white" : "darkgrey";
                   font{
                       bold: true;
                       pointSize:12;
                   }
               }
           }
           frame: Rectangle {
              //color: myGradient;
              gradient: Gradient{
                 id:myGradient;
                 GradientStop{ position: 0.0;color:"steelblue"}
                 GradientStop{ position: 1.0;color:"lightblue"}
              }
           }
       }
}

