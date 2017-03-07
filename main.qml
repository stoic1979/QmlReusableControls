import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        width: 100
        height: 60
        text: "Hello"
        color: "black"
        textColor: "white"

        onClicked: {
            console.log("hello")
        }
    }
}
