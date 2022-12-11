import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id:root
    width: 1000
    height: 700
    visible: true
    title: qsTr("TemplateHMI v0.0.1")

    Item{
        id:themeInfo
        property string mainColor:"#5070D0"
        property string transitionalColor:"#5020B0"
        property string secondaryColor:"#500070"
        property string headerColor:"#0070FF"
        property string footerColor:"#909090"
        //TODO : add a new Settings/Change theme page to change these colors
    }

    Header{
        id:header
        height:root.height*0.2
        width:root.width

        RoundButton{
            id:menuToggle
            property string myColor : "transparent"
            width:parent.width*0.05
            height:parent.height*0.4
            anchors.verticalCenter:parent.verticalCenter

            background:Rectangle{
                radius:menuToggle.width
                color:parent.myColor
            }
            onHoveredChanged:{
                if (menuToggle.hovered){
                    myColor = "lightgray"
                } else{
                    myColor = "transparent"
                }
            }
            onPressedChanged:{
                if (!menuToggle.down){
                    myColor="gray"
                } else{
                    myColor = "lightgray"
                }

            }

            onClicked:{
                menu.visible = !menu.visible
            }

        }
        Image{
            height:menuToggle.height/1.8
            width:menuToggle.width/1.8
            anchors.centerIn:menuToggle
            source:"qrc:/images/menu-icon.png"
        }
    }

    Body{
        id:body
        anchors.top:header.bottom
        height:root.height*0.7
        width:root.width

        Rectangle{
            id:menu
            visible:false
            height:parent.height
            width:root.width*0.2
            anchors.left:parent.left
            color:"black"
            radius:20
        }

        Rectangle{
            id:edgeSmootherMenu
            visible:menu.visible
            height:menu.height
            width:menu.width/2
            anchors.left:menu.left
            color:menu.color
        }


    }

    Footer{
        id:footer
        height:root.height*0.1
        width:root.width
    }
}
