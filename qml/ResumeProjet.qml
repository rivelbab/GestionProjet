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
import QtQuick.Dialogs 1.2
import ProjetType 1.0
import "../js/jsfile.js" as Logic

Item{
    id:_resumeprojet;
    anchors.fill: parent;

    //nom des champs de TextEdit
    property var nom;
    property var secteur;
    property var idpro;
    property var but;
    property var lieu;
    property var nature;
    property var nec;
    property var ca;

    //**************************************

    ProjetModel{
        id:_pm;
    }

    //***************************************
    //gestion des actions des boutons

    //action du bouton quitter
    Action{
        id:_annuleraction;
        onTriggered:{
            _nom.text="";
            _but.text="";
            _lieu.text="";
            _nature.text="";
            _nec.text="";
            _ca.text="";
            _secteur.text="";
            _idpro.text="";
        }
    }
    Action{
        id:_validerAction;
        onTriggered: {
            _pm.insProjet(idpro ,nom ,but ,lieu ,nature ,nec ,secteur, ca);

            _nom.text="";
            _but.text="";
            _lieu.text="";
            _nature.text="";
            _nec.text="";
            _ca.text="";
            _secteur.text="";
            _idpro.text="";
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
                        id:_idpro;
                        Layout.fillWidth: true;
                        placeholderText: "Projet numero : "
                        onEditingFinished: {
                            idpro = _idpro.text.toString();
                            _idpro.textColor = "green";
                        }
                    }
                    TextField{
                        id:_nom;
                        Layout.fillWidth: true;
                        placeholderText: "Nom du projet :"
                        onEditingFinished: {
                            nom = _nom.text.toString();
                            _nom.textColor = "green";
                        }
                    }
                    TextField{
                        id:_secteur;
                        Layout.fillWidth: true;
                        placeholderText: "Secteur d'activite :"
                        onEditingFinished: {
                            secteur = _secteur.text.toString();
                            _secteur.textColor = "green";
                        }
                    }                    
                    TextField{
                        id:_but;
                        Layout.fillWidth: true;
                        placeholderText: "but du projet :"
                        onEditingFinished: {
                            but = _but.text.toString();
                            _but.textColor = "green";
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
                        id:_lieu;
                        Layout.fillWidth: true;
                        placeholderText: "Lieu d'implentation :"
                        onEditingFinished: {
                            lieu = _lieu.text.toString();
                            _lieu.textColor = "green";
                        }
                    }
                    TextField{
                        id:_nature;
                        Layout.fillWidth: true;
                        placeholderText: "Nature Juridique :"
                        onEditingFinished: {
                            nature = _nature.text.toString();
                            _nature.textColor = "green";
                        }
                    }
                    TextField{
                        id:_nec;
                        Layout.fillWidth: true;
                        placeholderText: "Nombre d'emploie cree :"
                        onEditingFinished: {
                            nec = _nec.text.toString();
                            _nec.textColor = "green";
                        }
                    }
                    TextField{
                        id:_ca;
                        Layout.fillWidth: true;
                        placeholderText: "Chiffre d'affaire estime :"
                        onEditingFinished: {
                            ca = _ca.text.toString();
                            _ca.textColor = "green";
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
                            source:"qrc:///images/manager.gif";
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


