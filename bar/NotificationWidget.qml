// ClockWidget.qml
import QtQuick
import Quickshell
import Quickshell.Wayland

Row {
    Text {
        id: notificationBtn

        font.pixelSize: 14
        font.bold: true
        font.family: "Iosevka NF"
        color: "#dfe3e7"
        // ambil data dari singleton
        text: ""
        anchors.verticalCenter: parent.verticalCenter
    }

    MouseArea {
        anchors.fill: notificationBtn
        onClicked: NotificationProcess.toggleSwaync.running = true
        cursorShape: Qt.PointingHandCursor
    }

}
