import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

Singleton {
    id: root

    property string batteryCapacity
    property string batteryStatus

    Process {
        id: batCapProc

        command: ["sh", "-c", "cat /sys/class/power_supply/BAT*/capacity 2>/dev/null || echo N/A"]

        stdout: SplitParser {
            onRead: (data) => {
                if (data)
                    batteryCapacity = parseInt(data.trim()) || 100;

            }
        }

    }

    // Battery status
    Process {
        id: batStatusProc

        command: ["sh", "-c", "cat /sys/class/power_supply/BAT*/status 2>/dev/null || echo Unknown"]

        stdout: SplitParser {
            onRead: (data) => {
                if (data)
                    batteryStatus = data.trim();

            }
        }

    }

    Timer {
        interval: 2000
        running: true
        repeat: true
        onTriggered: {
            batCapProc.running = true;
            batStatusProc.running = true;
        }
    }

}
