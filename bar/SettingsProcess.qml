import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

Singleton {
    id: root

    property alias toggleSwaync: toggleSwaync

    Process {
        id: toggleSwaync

        command: ["sh", "-c", "pkill -x rofi 2>/dev/null; swaync-client -t -sw"]
    }

}
