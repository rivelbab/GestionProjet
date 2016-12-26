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
    id:_promoteur1;
    anchors.fill: parent;

    //proprietes
    property var nom;
    property var prenom;
    property var tel;
    property var situation;
    property var age;
    property var email;
    property var bp;
    property var ville;
    property var pays;
    property var iduser;

    //fenetre du choix de la photo de profil
    FileDialog{
        id:_choixtof;
        visible: false;
        nameFilters: ["Images files (*.png *.jpg)"];
        onAccepted: _iv.open(fileUrl)
    }

    //projetModel du fichier database.h
    ProjetModel{id: _pm;}

    //rectangle d'affichage d'imade de profil
    Rectangle{
        id:_iv;
        width: 140;
        height: 140;
        visible: false;
        z:1;
        color:"black";
        radius: 15;
        anchors{
            top:parent.top;
            right: parent.right;
            rightMargin: 38;
            topMargin: 48;
        }

        //fonction ouvrir une image;
        function open(source) {
            viewerImage.source = source;
            width=150;
            height=150;
            visible = true
        }
        Image {
            id: viewerImage
            anchors{fill: _iv;margins: 2}
        }
    }

    //***************************************
    //gestion des actions des boutons

    //action du bouton quitter
    Action{
        id:_annuleraction;
        onTriggered:{
            _nom.text="";
            _prenom.text="";
            _tel.text="";
            _situation.text = "";
            _age.text="";
            _email.text="";
            _bp.text="";
            _ville.text="";
            _pays.text="";
            _iduser.text="";
        }
    }
    Action{
        id:_validerAction;
        onTriggered: {
            _pm.insUser(iduser ,nom ,prenom ,tel ,situation ,age ,email ,bp ,ville ,pays);
            _nom.text="";
            _prenom.text="";
            _tel.text="";
            _situation.text = "";
            _age.text="";
            _email.text="";
            _bp.text="";
            _ville.text="";
            _pays.text="";
            _iduser.text="";
        }
    }

    //action du bouton choix de la photo
    Action{
        id:_photo;
        onTriggered: _choixtof.open();
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
                        id:_iduser;
                        Layout.fillWidth: true;
                        placeholderText: "Projet numero :"
                        onEditingFinished: {
                            iduser=_iduser.text.toString();
                            _iduser.textColor = "green";
                        }
                    }
                    TextField{
                        id:_nom;
                        Layout.fillWidth: true;
                        placeholderText: "Nom :"
                        onEditingFinished: {
                            nom = _nom.text.toString();
                            _nom.textColor = "green";
                        }
                    }
                    TextField{
                        id:_prenom;
                        Layout.fillWidth: true;
                        placeholderText: "Prenom :"
                        onEditingFinished: {
                            prenom = _prenom.text.toString();
                            _prenom.textColor = "green";
                        }
                    }
                    TextField{
                        id:_tel;
                        Layout.fillWidth: true;
                        placeholderText: "Tel :"
                        onEditingFinished: {
                            tel = _tel.text.toString();
                            _tel.textColor = "green";
                        }
                    }
                    TextField{
                        id:_situation;
                        Layout.fillWidth: true;
                        placeholderText: "Situation :"
                        onEditingFinished: {
                            situation = _situation.text.toString();
                            _situation.textColor = "green";
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
                        id:_age;
                        Layout.fillWidth: true;
                        placeholderText: "Age :"
                        onEditingFinished: {
                            age = _age.text.toString();
                            _age.textColor = "green";
                        }
                    }
                    TextField{
                        id:_email;
                        Layout.fillWidth: true;
                        placeholderText: "E-mail :"
                        onEditingFinished: {
                            email = _email.text.toString();
                            _email.textColor = "green";
                        }
                    }
                    TextField{
                        id:_bp;
                        Layout.fillWidth: true;
                        placeholderText: "BP :"
                        onEditingFinished: {
                            bp = _bp.text.toString();
                            _bp.textColor = "green";
                        }
                    }
                    TextField{
                        id:_ville;
                        Layout.fillWidth: true;
                        placeholderText: "Ville :"
                        onEditingFinished: {
                            ville = _ville.text.toString();
                            _ville.textColor = "green";
                        }
                    }
                    TextField{
                        id:_pays;
                        Layout.fillWidth: true;
                        placeholderText: "Pays :"
                        onEditingFinished: {
                            pays = _pays.text.toString();
                            _pays.textColor = "green";
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
                    spacing: 0;
                    Button{
                        id:_tof;
                        tooltip: qsTr("Ajouter une photo");

                        action:_photo;

                        style:ButtonStyle{
                            background: Rectangle{
                                implicitWidth: 150;
                                implicitHeight: 150;
                                color:"black";
                                radius: 15;
                                border{width: 2;color:"green"}
                            }
                            label:Rectangle{
                                id:_lab;
                                implicitWidth: 150;
                                implicitHeight: 150;
                                color:"black";
                                radius: 15;
                                Image{
                                    id:_tofId;
                                    source:"qrc:///images/contact.svg";
                                    anchors{
                                        fill:parent;
                                        margins:_tof.hovered?6:2;
                                    }
                                }
                            }
                        }
                    }

                    Rectangle{
                        id:_riendutout;
                        width:10;
                        height: 50;
                        color:"transparent"
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


