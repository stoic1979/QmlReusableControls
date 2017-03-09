import QtQuick 2.0

Rectangle {

    id: toast

    property alias text: msg.text
    property alias fontSize: msg.font.pixelSize
    property alias textColor: msg.color

    // time for toast to stay
    property int timeout: 2000

    color: "blue"
    radius: 8
    border.color: "#666666"
    border.width: 4

    width: 320
    height: 240

    z: 1000

    Text {
        id: msg
        anchors.centerIn: parent
        width: toast.width - 20
        height: toast.height/2
    }

    Component.onCompleted: {
        console.log("--- wifi config loaded ---");
        timer.running = true;
    }

    Timer {
        id: timer
        interval: 1000
        repeat: false
        running: false
        triggeredOnStart: false
        onTriggered: toast.visible = false;
    }
}//toast
