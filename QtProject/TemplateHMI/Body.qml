import QtQuick 2.0

Item {

    Rectangle{
        anchors.fill:parent
        //color: "#8000ff"
        gradient: Gradient{
            GradientStop { position : 0.0; color: themeInfo.mainColor}
            GradientStop { position : 0.8; color: themeInfo.transitionalColor}
            GradientStop { position : 1.0; color: themeInfo.secondaryColor}
        }
    }
}
