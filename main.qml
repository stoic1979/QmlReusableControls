import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 640
    height: 480

    title: qsTr("Controls Demo")

    Row {
        spacing: 10
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

        Checkbox {
            y: 10
            text: "Enable Bluetooth"
        }

        TimeBox {
            width: 100
            height: 40
        }

    }//row

    Toast {

        text: "Update done successfully !!!"
        fontSize: 20
        textColor: "#222222"
    }
}//root
