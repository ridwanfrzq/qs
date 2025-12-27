import QtQuick
import QtQuick.Layouts

Row {
    spacing: 6

    Text {
        text: "󱂬"
        color: "#b4befe"
        font.family: "Nerd Font"
        font.pixelSize: 16
    }

    Text {
        text: "Workspace " + WorkspaceProcess.ws
        color: "#cdd6f4"
        font.pixelSize: 14
        font.family: "Iosevka NF"
        font.bold: true
    }

}
