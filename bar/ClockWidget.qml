// ClockWidget.qml
import QtQuick

Text {
    font.pixelSize: 14
    font.bold: true
    font.family: "Iosevka NF"
    color: "#dfe3e7"
    // ambil data dari singleton
    text: ClockProcess.time
}
