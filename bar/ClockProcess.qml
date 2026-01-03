import QtQuick
import Quickshell
pragma Singleton

Singleton {
    // format bebas
    readonly property string time: {
        Qt.formatDateTime(clock.date, "HH:mm AP");
    }
    readonly property string date: {
        Qt.formatDateTime(clock.date, "ddd dd MMMM");
    }

    SystemClock {
        id: clock

        precision: SystemClock.Minutes
    }

}
