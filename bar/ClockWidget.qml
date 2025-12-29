// ClockWidget.qml
import QtQuick
import qs.color as Color

Text {
    font.pixelSize: 14
    font.bold: true
    font.family: "Iosevka NF"
    color: Color.Matugen.colors.on_background
    // ambil data dari singleton
    text: ClockProcess.time
}
