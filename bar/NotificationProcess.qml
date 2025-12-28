import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

Singleton {
    id: root

    Process {
        id: toggleSwaync

        command: ["sh", "-c", "swaync-client -t -sw"]
    }

}
