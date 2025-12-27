import QtQuick
import QtQuick.Layouts
import Quickshell

Row {
    Rectangle {
        width: 60
        height: 20
        color: "transparent"
        border.color: BatteryProcess.batteryCapacity <= 20 ? "#f38ba8" : "#94e2d5"
        border.width: 2
        radius: 3

        // Battery fill
        Rectangle {
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.margins: 2
            width: Math.max(0, (parent.width - 4) * (BatteryProcess.batteryCapacity / 100))
            color: {
                if (BatteryProcess.batteryStatus === "Charging")
                    return "#a6e3a1";

                if (BatteryProcess.batteryCapacity <= 20)
                    return "#f38ba8";

                if (BatteryProcess.batteryCapacity <= 50)
                    return "#f9e2af";

                return "#94e2d5";
            }
            radius: 2
        }

        // Battery tip (the little nub on the right)
        Rectangle {
            anchors.left: parent.right
            anchors.verticalCenter: parent.verticalCenter
            width: 3
            height: 10
            color: BatteryProcess.batteryCapacity <= 20 ? "#f38ba8" : "#94e2d5"
            radius: 1
        }

        // Percentage text
        Text {
            text: BatteryProcess.batteryCapacity + "%"
            color: "#cdd6f4"
            font.pixelSize: 10
            font.bold: true
            anchors.centerIn: parent
        }

    }

}
