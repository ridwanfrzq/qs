import QtQuick
import Quickshell
pragma Singleton

Singleton {
    // format bebas
    readonly property string time: {
        Qt.formatDateTime(clock.date, "HH:mm AP");
    }

    SystemClock {
        id: clock

        precision: SystemClock.Minutes
    }

}
