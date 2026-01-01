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

    Rectangle {
        anchors.bottom: parent.bottom
        width: parent.width
        height: 1
        color: Color.Matugen.colors.outline
        opacity: 0.8
    }

    Item {
        anchors.fill: parent

        RowLayout {
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 10

            Loader {
                active: true

                sourceComponent: WorkspaceWidget {
                }

            }

        }

        RowLayout {
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 10
            spacing: 10

            Loader {
                active: true

                sourceComponent: BatteryWidget {
                }

            }

            Loader {
                active: true

                sourceComponent: SettingsWidget {
                }

            }

        }

        Item {
            anchors.fill: parent

            Loader {
                anchors.centerIn: parent
                active: true

                sourceComponent: ClockWidget {
                }

            }

        }

    }

}
