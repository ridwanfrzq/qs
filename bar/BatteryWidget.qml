import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.color as Color

RowLayout {
    Rectangle {
        id: batOutline

        width: 45
        height: 18
        color: "transparent"
        border.color: Color.Matugen.colors.on_background // outline
        border.width: 1.3
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
                    return "#15be17";

                if (BatteryProcess.batteryCapacity <= 20)
                    return "#d00000";

                if (BatteryProcess.batteryCapacity <= 30)
                    return "#ffb000";

                return "#15be17"; //surface bright
            }
            radius: 2
        }

        // Battery tip (the little nub on the right)
        Rectangle {
            anchors.left: parent.right
            anchors.verticalCenter: parent.verticalCenter
            width: 2.3
            height: 10
            color: batOutline.border.color
            radius: 1
        }

        // Percentage text
        Text {
            text: {
                if (BatteryProcess.batteryStatus === "Charging")
                    return "󱐋 " + BatteryProcess.batteryCapacity + "%";

                if (BatteryProcess.batteryStatus === "Discharging")
                    return BatteryProcess.batteryCapacity + "%";

                if (BatteryProcess.batteryStatus === "Not charging")
                    return BatteryProcess.batteryCapacity + "%";

                return "N/A";
            }
            color: Color.Matugen.colors.on_background
            font.pixelSize: 10
            font.bold: true
            anchors.centerIn: parent
        }

    }

}
