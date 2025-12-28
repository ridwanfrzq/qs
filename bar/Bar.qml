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

    // Main container
    Item {
        anchors.fill: parent

        // Background layout for left and right
        RowLayout {
            anchors.fill: parent
            spacing: 0

            // LEFT section
            RowLayout {
                spacing: 10
                Layout.alignment: Qt.AlignVCenter
                Layout.leftMargin: 7

                WorkspaceWidget {
                }

            }

            // SPACER
            Item {
                Layout.fillWidth: true
            }

            // RIGHT section
            RowLayout {
                spacing: 10
                Layout.alignment: Qt.AlignVCenter
                Layout.rightMargin: 15

                BatteryWidget {
                }

                NotificationWidget {
                }

            }

        }

        // CENTER (overlay with pointer events disabled for click-through)
        ClockWidget {
            anchors.centerIn: parent
            z: 10 // Ensure it's on top
        }

    }

}
