import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets

RowLayout {
    //Layout.minimumWidth: 10
    //Layout.maximumWidth: 10

    Layout.preferredWidth: 10

    WrapperMouseArea {
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        cursorShape: Qt.PointingHandCursor
        onClicked: (mouse) => {
            if (mouse.button === Qt.LeftButton)
                NotificationProcess.toggleSwaync.running = true;
            else if (mouse.button === Qt.RightButton)
                NotificationProcess.toggleDnd.running = true;
        }

        Text {
            id: notificationBtn

            anchors.centerIn: parent
            font.pixelSize: 14
            font.bold: true
            font.family: "Iosevka NF"
            color: "#dfe3e7"
            text: NotificationProcess.notificationIcon
        }

    }

}
