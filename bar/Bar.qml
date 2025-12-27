import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland

PanelWindow {
    id: bar

    implicitHeight: 32
    color: "#0f0f0f"

    anchors {
        top: true
        left: true
        right: true
    }

    RowLayout {
        anchors.fill: parent

        // LEFT
        RowLayout {
            spacing: 10
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            Layout.leftMargin: 7
            Layout.fillWidth: false

            WorkspaceWidget {
            }

        }

        // SPACER
        Item {
            Layout.fillWidth: true
        }

        // RIGHT (kosong dulu kalau mau)
        RowLayout {
            spacing: 10
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            Layout.rightMargin: 7
            Layout.fillWidth: false

            BatteryWidget {
            }

        }

    }

    // CENTER (overlay aman)
    ClockWidget {
        anchors.centerIn: parent
    }

}
