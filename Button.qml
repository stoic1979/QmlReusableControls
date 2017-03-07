import QtQuick 2.0

Rectangle {
    id: button

    signal clicked
    property alias imgSrc: img.source
    property alias text: txt.text
    property alias textColor: txt.color
    property alias imgWidth: img.width
    property alias imgHeight: img.height

    color: "#dddddd"
    radius: 4
    border.color: "#cccccc"

    Image {
        id: img
        anchors.centerIn: parent
        width: button.width * 3/4
        height: button.height * 3/4
    }

    Text {
        id: txt
        anchors.centerIn: button
    }

    MouseArea {
        id: mouseArea
        enabled: button.enabled
        anchors.fill: button
        hoverEnabled: true

        onClicked: button.clicked()

        onPressed: {
            button.opacity = 0.5
        }

        onReleased: {
            button.opacity = 1.0
        }

    }

}//button
