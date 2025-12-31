import QtQuick
import QtQuick.Layouts
import qs.color as Color

RowLayout {
    spacing: 6

    Text {
        text: "󱂬"
        color: Color.Matugen.colors.on_background
        font.family: "Nerd Font"
        font.pixelSize: 16
    }

    Text {
        text: "Workspace " + WorkspaceProcess.ws
        color: Color.Matugen.colors.on_background
        font.pixelSize: 14
        font.family: "Iosevka NF"
        font.bold: true
    }

    Text {
        text: WorkspaceProcess.overview === "Overview is open." ? "[Overview]" : WorkspaceProcess.window
        color: Color.Matugen.colors.outline
        font.pixelSize: 14
        font.family: "Iosevka NF"
        Layout.leftMargin: 3
        visible: WorkspaceProcess.overview === "Overview is open." || WorkspaceProcess.window !== "null"
    }

}
