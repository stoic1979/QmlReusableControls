import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 840
    height: 600

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
            text: "Toast Type 1"
            color: "blue"
            textColor: "white"

            onClicked: {
                console.log("showing toast 1");
                toast1.visible = true;
            }
        }

        Button {
            width: 120
            height: 60
            text: "Toast Type 2"
            color: "blue"
            textColor: "white"

            onClicked: {
                console.log("showing toast 2");
                toast2.visible = true;
            }
        }

        Button {
            width: 120
            height: 60
            text: "Toast Type 3"
            color: "blue"
            textColor: "white"

            onClicked: {
                console.log("showing toast 3");
                toast3.visible = true;
            }
        }

    }//row

    // toast with both image and text
    Toast {
        id: toast1
        text: "Lets raise a toast for WeaveBytes !!!"
        fontSize: 18
        textColor: "#ffffff"
        imgSrc: "qrc:/imgs/images/thumbsup.png"
    }

    // toast with text only
    Toast {
        id: toast2
        text: "Lets raise a toast for WeaveBytes !!!"
        fontSize: 18
        textColor: "#ffffff"
    }

    // toast with image only
    Toast {
        id: toast3
        fontSize: 18
        textColor: "#ffffff"
        imgSrc: "qrc:/imgs/images/thumbsup.png"
    }
}//root
