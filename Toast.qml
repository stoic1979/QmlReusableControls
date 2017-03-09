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

    //----------------------------------------------------------------
    // initially toast will not be visible
    // once its visible, timer will start running
    // and once timer has triggered, it will hide the toast again
    //----------------------------------------------------------------
    visible: false

    Text {
        id: msg
        anchors.centerIn: parent
    }

    Timer {
        id: timer
        interval: timeout
        repeat: false
        running: toast.visible
        triggeredOnStart: false
        onTriggered: toast.visible = false;

    }
}//toast
