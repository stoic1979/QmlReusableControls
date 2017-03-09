import QtQuick 2.0

//----------------------------------------------------------------
// Toast/Popup with specified timeout to show/stay on screen.
//
// 1. It can be a toast with image only.
// 2. It can be a toast with text only.
// 3. It can be a toast with both image and text.
//----------------------------------------------------------------

Rectangle {

    id: toast

    property alias text: msg.text
    property alias fontSize: msg.font.pixelSize
    property alias textColor: msg.color
    property alias imgSrc: img.source

    // time for toast to stay
    property int timeout: 2000

    color: "blue"
    radius: 8
    border.color: "#666666"
    border.width: 4

    width: 320
    height: 240

    anchors.centerIn: parent

    z: 1000

    //----------------------------------------------------------------
    // initially toast will not be visible
    // once its visible, timer will start running
    // and once timer has triggered, it will hide the toast again
    //----------------------------------------------------------------
    visible: false

    Column {

        anchors.centerIn: parent
        spacing: 10

        Image {
            id: img
            x: parent.width/2 - width/2
        }

        Text {
            id: msg
        }
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
