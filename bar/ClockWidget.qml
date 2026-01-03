// ClockWidget.qml
import QtQuick
import QtQuick.Layouts
import qs.color as Color

RowLayout {
    spacing: 13

    Text {
        font.pixelSize: 14
        font.bold: true
        font.family: "Iosevka NF"
        color: Color.Matugen.colors.on_background
        // ambil data dari singleton
        text: ClockProcess.time
    }

    Text {
        font.pixelSize: 14
        font.bold: true
        font.family: "Iosevka NF"
        color: Color.Matugen.colors.outline
        // ambil data dari singleton
        text: ClockProcess.date
    }

}
