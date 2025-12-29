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
        text: WorkspaceProcess.output
        color: Color.Matugen.colors.on_background
        font.pixelSize: 14
        font.family: "Iosevka NF"
        font.bold: true
    }

    Text {
        text: WorkspaceProcess.window
        color: Color.Matugen.colors.on_background
        font.pixelSize: 14
        font.family: "Iosevka NF"
        Layout.leftMargin: 3
        visible: {
            if (WorkspaceProcess.overview === "Overview is open.")
                return false;

            if (WorkspaceProcess.window === "null")
                return false;

            return true;
        }
    }

}
