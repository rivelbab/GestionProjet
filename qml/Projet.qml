import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0
import QtQuick 2.4
import "../js/jsfile.js" as Logic
import ProjetType 1.0

Item{
    id: _projetPage;
    anchors.fill: parent;

    property alias index : _grid.currentIndex;
    property alias npt : _grid.count;
    property string pNom;
    property int rvalue1;    
    property bool bkr;
    property var d: Logic.nomP(_pm.secteur());

    //*****************************************
    //appel des fichiers externes

    //fenetre gestion de projet;
   DetailProjet{
       id:_root;
       cIndex: index;
       cName: pNom;
   }


    ProjetModel{
    id:_pm;
    }


    //fenetre de Recherche du projet;
    Recherche{
        id:_recherche;
        visible: false;        
    }

    //****************************************
    //gestion des actions

    //action du bouton recherche


    RowLayout {
            id: _mainRow2;
            anchors{fill:parent;margins: 8;}

            spacing: 16
            ColumnLayout {
                id: _col1;
                Layout.minimumWidth: implicitWidth;
                Layout.fillWidth: false;
                anchors{
                    top:parent.top;
                    bottom: parent.bottom;
                    topMargin: 20;
                }
                Rectangle{
                    id: _rec1;
                    width: _projetPage.width/1.5;
                    height: _projetPage.height/1.1;
                    color:"transparent";

                    //creation du model d'affichage des projets

                    ListModel{
                        id:_model;
                        Component.onCompleted: {
                            var nb = _pm.nbrNom();
                            for(var i=0;i<nb;i++){
                                _model.append({"icon":"qrc:///images/dossier.png","name":d[i]});
                            }
                        }
                    }

                    //listdelegate
                    Component{
                        id:_delegate;

                        Button{
                            id: _b;
                            //action du bouton
                            action:Action{
                                id:_projetAction;
                                onTriggered: {
                                    _root.visible = !_root.visible;
                                    _b.GridView.view.currentIndex = index;
                                    pNom = name;
                                }
                            }

                            //prsonalisation du bouton
                            style: ButtonStyle{
                                background: Rectangle{                                    
                                    implicitHeight: _grid.cellHeight - 15;
                                    implicitWidth: _grid.cellWidth - 15;
                                    color: _b.pressed? "lightgrey":"black";
                                    opacity: 0.8;
                                    radius: 15;
                                    border{
                                        color:_b.hovered?"darkgrey":"green";
                                        width:_b.hovered?3:2;
                                    }
                                }
                                label: Rectangle{
                                    implicitHeight: _grid.cellHeight -15;
                                    implicitWidth: _grid.cellWidth -15;
                                    radius: 15;
                                    color: "transparent";                                    
                                    Column{
                                        spacing: 8;
                                        anchors.centerIn: parent;
                                        Image{
                                            source: icon;
                                            smooth: true;
                                        }
                                        Text{
                                            text:name;
                                            font{bold:true;pointSize: 12;}
                                            color:"white";
                                        }
                                    }                                    
                                }
                            }
                        }
                    }
                    //gridview
                    GridView{
                        id:_grid;
                        model: _model;
                        delegate: _delegate;
                        highlightFollowsCurrentItem: true;
                        anchors{fill: parent;leftMargin: 15;topMargin: 15;}
                        cellWidth: 175;                       
                        cellHeight: 150;
                        highlight: _highlight;
                        focus: true;
                        add: Transition {
                                NumberAnimation { properties: "x,y"; from: 100; duration: 1000 }
                            }
                        addDisplaced: Transition {
                               NumberAnimation { properties: "x,y"; duration: 1000 }
                           }
                        displaced: Transition {
                                NumberAnimation { properties: "x,y"; duration: 1000 }
                            }
                        populate: Transition {
                               NumberAnimation { properties: "x,y"; duration: 1000 ;easing.type: Easing.OutBounce}
                           }
                        remove: Transition {
                                ParallelAnimation {
                                    NumberAnimation { property: "opacity"; to: 0; duration: 1000 }
                                    NumberAnimation { properties: "x,y"; to: 100; duration: 1000 }
                                }
                            }
                        removeDisplaced: Transition {
                                NumberAnimation { properties: "x,y"; duration: 1000 }
                            }

                    }
                    //highlight
                    Component{
                        id:_highlight;
                        Rectangle {
                            width: _grid.cellWidth - 10 ;
                            height: _grid.cellHeight -10;
                            color: "black";
                            radius: 15;
                            x: _grid.currentItem.x;
                            y: _grid.currentItem.y;
                            Behavior on x { SpringAnimation { spring: 4; damping: 0.2 } }
                            Behavior on y { SpringAnimation { spring: 4; damping: 0.2 } }
                        }
                    }
                }
            }
            ColumnLayout{
                id:_col2;
                spacing: 10;
                anchors{
                    top:parent.top;
                    bottom: parent.bottom;
                    topMargin: 35;
                }
                Layout.fillWidth: true;
                Rectangle{
                    id:_rec2;
                    width:250;
                    height:30;
                    color:"transparent";

                    ColumnLayout{
                        id: _col3;
                        spacing: 1.5;
                        anchors{fill: parent}

                        Rectangle{
                            id:_rec4;
                            width: 238;
                            height: 30;
                            color:"transparent";                            

                            RowLayout{
                                spacing:1;
                                anchors.fill: parent;

                                TextField{
                                    id:_tf1;
                                    Layout.fillWidth: true;                                    
                                    placeholderText: qsTr("Tapez le code Projet");
                                    onAccepted: {
                                        rvalue1=_tf1.text.toString();
                                        bkr = true;
                                        _recherche.rcode = rvalue1;
                                        _recherche.ok = bkr;
                                        _recherche.visible = !_recherche.visible;
                                    }
                                }
                                Button{
                                    id: _bbb ;
                                    action: Action{
                                        onTriggered: {
                                            rvalue1=_tf1.text.toString();
                                            bkr = true;
                                            _recherche.rcode = rvalue1;                                          
                                            _recherche.ok = bkr;
                                            _recherche.visible = !_recherche.visible;
                                        }
                                    }

                                    style: ButtonStyle{
                                        background: Rectangle{
                                            implicitHeight: 25;
                                            implicitWidth: 25;
                                            color:_bbb.pressed? "green":"white";
                                            radius: 30;
                                            border{
                                                color:_bbb.hovered?"blue":"green";
                                                width: 1
                                            }
                                            Image{
                                                source: "qrc:///images/find2.png";
                                                anchors{fill: parent;margins: 1}
                                                smooth: true;
                                            }
                                        }
                                    }
                                }
                            }
                        }                        
                    }
                }
                Rectangle{
                    id: _rec5;
                    width: 230;
                    height: 280;
                    color: "transparent";
                    border{color: "green";width:1.5}
                    Image{
                        id: _pro2;
                        source:"qrc:///images/projet2.png";
                        anchors{fill: parent;margins: 2}
                        smooth: true;
                    }
                }
            }
        }    
}//fin


