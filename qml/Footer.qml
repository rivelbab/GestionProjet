
import QtQuick 2.2

Rectangle{
    id: _footer;

    width:360;
    height:360;
    color:"#154B1A";
    border {width: 3;color: "#154B1A";}

    Connexion{
        id: _connexion;
        //anchors{bottom: parent.top}
        visible: false;
    }

    //affiche la version du logiciel
    Rectangle{
        id: _versionContener ;

        width: parent.width/7;
        height: parent.height/2 +5;
        radius :15;
        color:"yellow";
        border.color: parent.border.color;
        border.width: parent.border.width;
        anchors.right: parent.right;
        anchors.bottom: parent.bottom;

        Text{
            id: _versiontext;

            font {italic: true}
            color:"#154B1A";
            text: "Version 1.1 pro";
            font.pointSize: 8;
            anchors.centerIn: parent;
        }
    }

    //contient les liens vers des ressources externes
    Rectangle{
        id: _pubContener ;

        width:parent.width/2;
        height:parent.height;
        color:parent.color;
        border.color: parent.border.color;
        border.width: parent.border.width;        

        //positionne les differents logos
        ListModel{
            id:_model;
            ListElement{
                icon:"qrc:///images/update.png";
                name:"  ";
            }
            ListElement{
                icon:"qrc:///images/soundcloud.png";
                name:"  ";
            }
            ListElement{
                icon:"qrc:///images/rss.png";
                name:"  ";
            }
            ListElement{
                icon:"qrc:///images/vimeo.png";
                name:"  ";
            }
            ListElement{
                icon:"qrc:///images/twitter.png";
                name:"  ";
            }
            ListElement{
                icon:"qrc:///images/facebook.png";
                name:"  ";
            }
            ListElement{
                icon:"qrc:///images/help.ico";
                name:"  ";
            }
        }
        Component{
            id:_delegate;
            Rectangle{
                width:60
                height: 50
                color:"transparent";
                Row{
                    anchors.centerIn: parent;
                    spacing: 2;
                    Image {
                        source: icon;
                        smooth: true;
                    }
                    Text{
                        text: name;
                    }
                }
            }
        }
        ListView{
            id:_view;
            anchors{fill: parent;margins: 2}
            focus:true;
            highlightFollowsCurrentItem: false;
            populate: Transition {
                   NumberAnimation { properties: "x,y"; duration: 2800 }
               }
            model:_model;
            delegate: _delegate;
            layoutDirection: Qt.Horizontal;
            orientation: Qt.Horizontal;
        }
    }

}
