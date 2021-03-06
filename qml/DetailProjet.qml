/*-------------------------------------- *
  --    GESTION DE PROJET DE GEJ      -- *
  --    Developpee par Rivelnet       -- *
  --    Version 1.2/ 09/12/2014       -- *
  --    DetailProjet.qml              -- *
  --------------------------------------*/

import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0
import "../js/jsfile.js" as Logic
import ProjetType 1.0

//fenetre d'affichage du projet
Window{
    id: _root;

    property int cIndex; //currentIndex
    property string cName; //current name;
    property int index1: _view.currentIndex;

    visible: false;
    width: 700;
    height: 500;
    maximumHeight: 510;
    maximumWidth: 810;
    title:cName;
    flags: Qt.Dialog;
    color:"white";

    ProjetModel{id: _pm}
    DetailPromoteur{
        id:_promoteur;
        visible:false;
        cIndex: _root.cIndex;
    }
    DetailPlanif{
        id:_planif;
        visible: false;
        cIndex: _root.cIndex;
    }

    Rectangle{
        width: parent.width;
        height: parent.height;
        anchors.fill: parent;
        gradient: Gradient{
           GradientStop{ position: 0.0;color:"steelblue"}
           GradientStop{ position: 1.0;color:"lightblue"}
        }

        Rectangle{
            id:_r2;
            width:parent.width;
            height: parent.height/7;
            anchors.top: parent.top;
            color:"#154B1A";
            border{width:1;color:"green"}
            Button{
                id:_m;
                tooltip: qsTr("menu");
                anchors{right: parent.right;bottom: parent.bottom;}
                menu:Menu{
                    title: qsTr("menu");
                    MenuItem{
                        text:"Responsable";
                        iconSource: "qrc:///images/pp2.png";
                        action:Action{
                            onTriggered: {
                                _promoteur.visible = !_promoteur.visible;
                            }
                        }
                    }
                    MenuItem{
                        text:"planification";
                        iconSource: "qrc:///images/alarm.png";
                        action:Action{
                            onTriggered: {
                                _planif.visible = !_planif.visible;
                            }
                        }
                    }
                    MenuItem{
                        text:"preference";
                        iconSource: "qrc:///images/preference.png";
                    }
                    MenuItem{
                        text:"quitter";
                        iconSource: "qrc:///images/shutdown1.png";
                        action:Action{
                            onTriggered: _root.close();
                        }
                    }
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

        Rectangle{
            id:_r3;
            width: 600;
            height: 400;
            color: "transparent";
            radius: 15;
            anchors{
                top:_r2.bottom;
                left:_r2.left;
                leftMargin: 50;
            }
            border{width: 2;color:"green"}

            Component{
                id:_del1;

                Button{
                    id:_b1;

                    action:Action{
                        id:_a1;
                        onTriggered: {
                            _b1.ListView.view.currentIndex = index1;
                        }
                    }
                    FocusScope{id: foc; focus: true; }

                    style:ButtonStyle{
                        background: Rectangle{
                            implicitHeight: 30;
                            implicitWidth: 500;
                            color:_b1.pressed?"lightgrey":"black";
                            opacity: _b1.hovered?0.6:0.9;
                            radius: 5;
                            border{
                                color:_b1.hovered?"black":"transparent";
                                width: _b1.hovered?2:1.5;
                            }
                        }
                        label: Rectangle{
                            implicitHeight: 30;
                            implicitWidth: 500;
                            radius: 5;
                            color:"transparent";
                            Text{
                                text:if(entier == 0) chaine;
                                else chaine+" "+entier;
                                color:"white";
                                font{bold: true}
                            }
                        }
                    }
                }
            }            

            ListView{
                id:_view;
                anchors{fill: parent;margins: 50}
                populate: Transition {
                       NumberAnimation { properties: "x,y"; duration: 2000 }
                   }

                model:{
                    var nb= _pm.nbrNom();
                    var y=Logic.nom_model(nb);
                    for(var i=0;i<nb;i++){
                        if(cIndex == i) y[i];
                    }
                }

                delegate: _del1;               
            }
        }
    }
}

