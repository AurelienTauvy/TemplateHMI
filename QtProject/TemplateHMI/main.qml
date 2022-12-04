import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:root
    width: 1000
    height: 700
    visible: true
    title: qsTr("ArchiTracker v0.0.1")

    Item{
        id:themeInfo
        property string mainColor:"#5070D0"
        property string transitionalColor:"#5020B0"
        property string secondaryColor:"#500070"
        property string headerColor:"#0070FF"
        property string footerColor:"#909090"
    }

    Header{
        id:header
        height:root.height*0.2
        width:root.width
    }

    Body{
        id:body
        anchors.top:header.bottom
        height:root.height*0.7
        width:root.width
    }

    Footer{
        id:footer
        height:root.height*0.1
        width:root.width
    }
}
