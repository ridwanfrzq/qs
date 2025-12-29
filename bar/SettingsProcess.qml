import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

Singleton {
    id: root

    property alias toggleSwaync: toggleSwaync

    Process {
        id: toggleSwaync

        command: ["sh", "-c", "swaync-client -t -sw"]
    }

}
