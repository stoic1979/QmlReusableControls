import QtQuick 2.0

Rectangle {
    id: checkbox

    Accessible.role: Accessible.CheckBox

    property string text: "CheckBox"
    property bool checked // required variable

    // width, height for checkbox's square rect
    property int boxLen: 20

    width: 100
    height: 40

    Row {
        spacing: 2

        Rectangle {
            width: boxLen
            height: boxLen
            border.width: checkbox.focus ? 2 : 1
            border.color: "black"
            radius: 4

            Image {
                id: checkboxText
                source: "qrc:/imgs/images/tick.png"
                anchors.centerIn: parent
                width: parent.width - 4
                height: parent.height - 4
                visible: checked
            }
        }

        Text {
            text: checkbox.text
            y: 4
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: checkbox.checked = !checkbox.checked
    }

    Keys.onSpacePressed: checkbox.checked = !checkbox.checked
}//checkbox
