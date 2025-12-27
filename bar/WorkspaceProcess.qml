import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

Singleton {
    id: root

    property string ws

    Process {
        id: wsProc

        command: ["sh", "-c", "niri msg workspaces | grep '\\*' | awk '{print $2}'"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.ws = this.text
        }

    }

    Timer {
        interval: 100
        running: true
        repeat: true
        onTriggered: wsProc.running = true
    }

}
