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
import "qml"
import ProjetType 1.0

//fenetre principal de l'application
ApplicationWindow {
    visible: true ;
    title: qsTr("GESTION DE PROJET") ;

    width: 840 ;
    height: 570 ;
    minimumWidth: 800;
    minimumHeight: 560;
    maximumWidth: 850;
    maximumHeight: 575;

    color: "#5296F8";

    //****************************************
    //appel des fichiers externes

    ProjetModel{
        id:_pm;
    }

    Projet{
        id:_projet;
    }   

    // conteneur du pied de la page
    Footer{
        id:_footer;
        width: parent.width;
        height: parent.height/11;
        anchors.bottom: parent.bottom;
    }

    //chargement d'une police personalisee
    FontLoader{
        id:_myFont;
        source: "qrc:///images/ab2.ttf";
    }

    //boite de dialog a apropos du logiciel
    AboutDialog{id: aboutDialog1;}

    //boite de dialog a propos de GEJ
    AboutDialog2{id: aboutDialog2;}

    //***************************************
    //gestion des actions

    //action du bouton 'a propos du logiciel'
    Action {
            id: aboutAction1;
            text: qsTr("A propos");
            onTriggered: aboutDialog1.open();
    }

    //action du bouton a propos de GEJ
    Action {
            id: aboutAction2;
            text: "GEJ";            
            onTriggered: aboutDialog2.open();
    }

    //action du bouton 'Quitter'
    Action {
        id: closeAction ;
        text : qsTr("Quitter");
        shortcut: StandardKey.Quit;
        onTriggered: Qt.quit();
    }


    //***************************************
    //personalisation de la bar de menu

    //style des menus
    /*property Component _menuBarStyle: MenuBarStyle{
        background: Rectangle{
            implicitWidth: parent.implicitWidth;
            implicitHeight: parent.implicitHeight;
            color: "white";
            opacity: 0.8;
            border{width:1;color:"green";}
        }
    }*/
    //style des sous menus
    property Component _menuStyle : MenuStyle{
        frame: Rectangle{
            implicitWidth: parent.implicitWidth + 15;
            implicitHeight: parent.implicitHeight + 15;
            color: parent.color;
            border{width:1;color:"green";}
        }
    }

    //**************************************
    //header du logiciel


    //conteneur d'en tete de la page
    Rectangle{
        id: _header;
        width: parent.width;
        height: parent.height/6 + 20;
        anchors.top: parent.top;
        color:"#154B1A";

        Rectangle{
            id: _imageContener;
            width:parent.width/5;
            height: parent.height-2;
            anchors{left: parent.left;}
            Image {               
                source: "qrc:///images/logo.png";
                anchors{fill: parent;}
                smooth: true;
            }
        }
        Text{            
            text:qsTr("Globale Entreprise Jeune");
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


    //*****************************************
    //gestion des onglets

    TabView{
        id: _tableview;
        anchors.fill: parent;
        tabPosition: Qt.TopEdge;
        anchors{topMargin: 60;bottomMargin: 50;}
        Layout.row: 5;
        Layout.columnSpan: 3;
        Layout.fillWidth: true;

        style: _tabViewStyle;

        Tab{
            id: _acceuilPage;
            title: qsTr("Acceuil");
            Acceuil{anchors.fill: parent;}
        }
        Tab{
            id: _projetPage;
            title: qsTr("Projets");
            Projet{anchors.fill: parent;}
        }
        /*Tab{
            id: _autrePage;
            title: qsTr("Autres");
            Autre{anchors.fill: parent;}
        }*/
    }

    //*******************************************
    //personalisation des onglets

    //style des tables
    property Component _tabViewStyle: TabViewStyle {

           tabsAlignment : Qt.AlignHCenter;
           frameOverlap: 0;
           tabOverlap: 4;
           tab: Rectangle {
               width:100;
               height: 50;
               color: "black";
               opacity: styleData.selected? 0.9: 0.7;
               border.color: styleData.hovered? "darkgrey": "green";              
               implicitWidth: Math.max(text.width + 50)
               implicitHeight: 25
               radius: 8;
               Text {
                   id: text;
                   anchors.centerIn: parent
                   text: styleData.title
                   color: styleData.selected ? "white" : "darkgrey";
                   font{
                       bold: true;
                       pointSize:15;
                   }
               }
           }
           frame: Rectangle {              
              gradient: Gradient{
                 id:myGradient;
                 GradientStop{ position: 0.0;color:"steelblue"}
                 GradientStop{ position: 1.0;color:"lightblue"}
              }
           }
       }
}//fin ApplicationWindow
