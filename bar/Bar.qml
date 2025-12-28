import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland

PanelWindow {
    id: bar

    implicitHeight: 32
    color: "#101417"

    anchors {
        top: true
        left: true
        right: true
    }

    Item {
        anchors.fill: parent

        RowLayout {
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 10

            WorkspaceWidget {
            }

        }

        RowLayout {
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 10
            spacing: 10

            BatteryWidget {
            }

            NotificationWidget {
            }

        }

        ClockWidget {
            anchors.centerIn: parent
        }

    }

}
