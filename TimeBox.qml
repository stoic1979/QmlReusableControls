import QtQuick 2.0

Rectangle {

    property alias textColor: txt.color

    Text {
        id: txt
        text: "123"
        anchors.centerIn: parent
    }
    Timer {
            id: textTimer
            interval: 1000
            repeat: true
            running: true
            triggeredOnStart: true
            onTriggered: txt.text = Qt.formatTime(new Date(),"hh:mm:ss")
        }

}
