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
            width: 150
            text: "Enable Bluetooth"
        }

        TimeBox {
            width: 100
            height: 40
        }

        Button {
            width: 120
            height: 60
            text: "Show Toast"
            color: "blue"
            textColor: "white"

            onClicked: {
                console.log("showing toast");
                toast.visible = true;
            }
        }

    }//row

    Toast {
        id: toast
        anchors.centerIn: parent
        text: "Lets raise a toast for WeaveBytes !!!"
        fontSize: 18
        textColor: "#ffffff"
    }
}//root
