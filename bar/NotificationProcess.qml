import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

Singleton {
    id: root

    property alias toggleSwaync: toggleSwaync
    property string dndStatus
    property string notificationCount
    property string notificationIcon: {
        if (dndStatus === "true" && notificationCount === "0")
            return "";

        if (dndStatus === "true" && notificationCount !== "0")
            return "";

        if (dndStatus === "false" && notificationCount !== "0")
            return "";

        return "";
    }

    Process {
        id: toggleSwaync

        command: ["sh", "-c", "swaync-client -t -sw"]
    }

    Process {
        id: dndStatusProc

        command: ["sh", "-c", "swaync-client -D"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: {
                root.dndStatus = this.text.trim();
            }
        }

    }

    Process {
        id: notificationCountProc

        command: ["sh", "-c", "swaync-client -c"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: {
                root.notificationCount = this.text.trim();
            }
        }

    }

    Timer {
        interval: 100
        running: true
        repeat: true
        onTriggered: {
            dndStatusProc.running = true;
            notificationCountProc.running = true;
        }
    }

}
