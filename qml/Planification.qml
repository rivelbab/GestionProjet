/*-------------------------------------- *
  --    GESTION DE PROJET DE GEJ      -- *
  --    Developpee par Rivelnet       -- *
  --    Version 1.2/ 09/12/2014       -- *
  --    planification.qml             -- *
  --------------------------------------*/

import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0
import QtQuick.Dialogs 1.2
import ProjetType 1.0
import "../js/jsfile.js" as Logic

Item{
    id:_planif;
    anchors.fill: parent;

    //nom des champs de text
    property var titre;
    property var dated;
    property var heured;
    property var datef;
    property var heuref;
    property var nomc;
    property var pnomc;
    property var idplanif;

    //**************************************
    ProjetModel{id:_pm;}

    //***************************************
    //gestion des actions des boutons

    //action du bouton quitter
    Action{
        id:_annuleraction;
        onTriggered:{
            _titre.text="";
            _dated.text="";
            _heured.text="";
            _datef.text="";
            _heuref.text="";
            _nomc.text="";
            _pnomc.text="";
            _idplanif.text="";
        }
    }
    Action{
        id:_validerAction;
        onTriggered: {
            _pm.insPlanif(idplanif,titre,dated,heured,datef,heuref,nomc,pnomc);
            _titre.text="";
            _dated.text="";
            _heured.text="";
            _datef.text="";
            _heuref.text="";
            _nomc.text="";
            _pnomc.text="";
            _idplanif.text="";
        }
    }


//*******************************************
    RowLayout{
        id:_r1;
        anchors{fill: parent;margins: 8;}
        spacing: 10;
        ColumnLayout{
            id:_c1;
            Layout.minimumWidth: implicitWidth;
            Layout.minimumHeight: implicitHeight;
            Layout.fillWidth: false;
            anchors{
                top: parent.top;
                bottom: parent.bottom;
                topMargin: 20;
            }
            Rectangle{
                id:_rec1;
                width:225;
                height: 300;
                anchors{centerIn: parent;}
                color:"transparent";
                radius: 15;
                ColumnLayout{
                    Layout.minimumWidth: implicitWidth;
                    Layout.minimumHeight: implicitHeight;
                    anchors{fill: parent;}
                    Layout.fillWidth: false;

                    TextField{
                        id:_idplanif;
                        Layout.fillWidth: true;
                        placeholderText: "Projet numero :"
                        onEditingFinished: {
                            idplanif = _idplanif.text.toString();
                            _idplanif.textColor = "green";
                        }
                    }
                    TextField{
                        id:_titre;
                        Layout.fillWidth: true;
                        placeholderText: "Nom du projet :"
                        onEditingFinished: {
                            titre = _titre.text.toString();
                            _titre.textColor = "green";
                        }
                    }
                    TextField{
                        id:_dated;
                        Layout.fillWidth: true;
                        placeholderText: "Date du debut :"
                        onEditingFinished: {
                            dated = _dated.text.toString();
                            _dated.textColor = "green";
                        }
                    }
                    TextField{
                        id:_heured;
                        Layout.fillWidth: true;
                        placeholderText: "Heure du debut :"
                        onEditingFinished: {
                            heured = _heured.text.toString();
                            _heured.textColor = "green";
                        }
                    }
                }
            }
        }
        //**************************************
        ColumnLayout{
            id:_c2;
            Layout.minimumWidth: implicitWidth;
            Layout.minimumHeight: implicitHeight;
            Layout.fillWidth: false;
            anchors{
                top: parent.top;
                bottom: parent.bottom;
                topMargin: 20;
            }
            Rectangle{
                id:_rec2;
                width: 225
                height: 300
                anchors{centerIn: parent;}
                color:"transparent";
                ColumnLayout{
                    Layout.minimumWidth: implicitWidth;
                    Layout.minimumHeight: implicitHeight;
                    anchors{fill: parent;}
                    Layout.fillWidth: false;
                    TextField{
                        id:_datef;
                        Layout.fillWidth: true;
                        placeholderText: "Date de fin :"
                        onEditingFinished: {
                            datef = _datef.text.toString();
                            _datef.textColor = "green";
                        }
                    }
                    TextField{
                        id:_heuref;
                        Layout.fillWidth: true;
                        placeholderText: "Heure de fin :"
                        onEditingFinished: {
                            heuref = _heuref.text.toString();
                            _heuref.textColor = "green";
                        }
                    }
                    TextField{
                        id:_nomc;
                        Layout.fillWidth: true;
                        placeholderText: "Nom du chef de projet :"
                        onEditingFinished: {
                            nomc = _nomc.text.toString();
                            _nomc.textColor = "green";
                        }
                    }
                    TextField{
                        id:_pnomc;
                        Layout.fillWidth: true;
                        placeholderText: "Prenom du chef de projet :"
                        onEditingFinished: {
                            pnomc = _pnomc.text.toString();
                            _pnomc.textColor = "green";
                        }
                    }
                }
            }
        }
        //***************************************
        ColumnLayout{
            id:_c3;
            Layout.minimumWidth: implicitWidth;
            Layout.minimumHeight: implicitHeight;
            Layout.fillWidth: false;
            anchors{
                top: parent.top;
                bottom: parent.bottom;
                topMargin: 18;
            }
            Rectangle{
                id:_rec3;
                width: 175
                height: 300
                anchors{centerIn: parent;}
                color:"transparent";
                ColumnLayout{
                    Layout.minimumWidth: implicitWidth;
                    Layout.minimumHeight: implicitHeight;
                    anchors{fill: parent;}
                    Layout.fillWidth: false;
                    Layout.fillHeight: false;
                    spacing: 0;
                    Rectangle{
                        id:_tofProjet;
                        width:175;
                        height: 190;
                        implicitHeight: 190;
                        implicitWidth: 175;
                        color:"transparent";
                        Image{
                            source:"qrc:///images/korgac.png";
                            smooth: true;
                            anchors{fill:parent;}
                        }
                    }

                    RowLayout{
                       spacing: 2;
                       Button{
                           id:_annuler;
                           tooltip: qsTr("Annuler l'operation");
                           text:"Annuler";
                           action: _annuleraction;
                       }
                       Button{
                           id:_valider;
                           tooltip: qsTr("valider le formulaire");
                           text:"valider";
                           action: _validerAction;
                       }
                    }
                }
            }
        }
    }
}


