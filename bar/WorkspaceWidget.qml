import QtQuick
import QtQuick.Layouts

RowLayout {
    spacing: 6

    Text {
        text: "󱂬"
        color: "#dfe3e7"
        font.family: "Nerd Font"
        font.pixelSize: 16
    }

    Text {
        text: WorkspaceProcess.output
        color: "#dfe3e7"
        font.pixelSize: 14
        font.family: "Iosevka NF"
        font.bold: true
    }

    Text {
        text: WorkspaceProcess.window
        color: "#dfe3e7"
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
