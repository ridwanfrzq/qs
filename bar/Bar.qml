import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import qs.color as Color

PanelWindow {
    id: bar

    property string opacity: "e6"

    implicitHeight: 32
    color: "#" + opacity + Color.Matugen.colors.background.slice(1)

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

            SettingsWidget {
            }

        }

        ClockWidget {
            anchors.centerIn: parent
        }

    }

}
