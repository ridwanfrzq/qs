// ClockWidget.qml
import QtQuick

Text {
    font.pixelSize: 14
    font.bold: true
    font.family: "Iosevka NF"
    color: "#f0f2f0"
    // ambil data dari singleton
    text: ClockProcess.time
}
