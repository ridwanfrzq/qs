import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

Singleton {
    id: root

    // ========= State =========
    property string ws: ""
    property string overview: ""
    readonly property string output: overview === "Overview is open." ? "Workspace " + ws + " [Overview]" : "Workspace " + ws

    // ========= Workspace =========
    Process {
        id: wsProc

        command: ["sh", "-c", "niri msg workspaces | grep '\\*' | awk '{print $2}'"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: {
                root.ws = this.text.trim();
            }
        }

    }

    // ========= Overview =========
    Process {
        id: overviewProc

        command: ["sh", "-c", "niri msg overview-state"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: {
                root.overview = this.text.trim();
            }
        }

    }

    // ========= Polling =========
    Timer {
        interval: 100
        running: true
        repeat: true
        onTriggered: {
            wsProc.running = true;
            overviewProc.running = true;
        }
    }

}
