import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.color as Color

RowLayout {
    property string percentage: Math.round(BatteryProcess.percentage * 100)

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
            width: Math.max(0, (parent.width - 4) * (percentage / 100))
            color: {
                if (BatteryProcess.isCharging)
                    return "#15be17";

                if (percentage <= 20)
                    return "#d00000";

                if (percentage <= 30)
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
            text: BatteryProcess.isCharging ? "󱐋 " + percentage + "%" : percentage + "%"
            color: Color.Matugen.colors.on_background
            font.pixelSize: 10
            font.bold: true
            anchors.centerIn: parent
        }

    }

}
