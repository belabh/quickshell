import qs.config
import QtQuick
import QtQuick.Effects

Rectangle {
    id: root

    property bool enableBackdropBlur: false
    property real blurRadius: 25
    property real borderOpacity: 0.2
    
    color: "transparent"

    // Subtle border for glass effect
    border.width: enableBackdropBlur ? 1 : 0
    border.color: enableBackdropBlur ? Qt.rgba(1, 1, 1, borderOpacity) : "transparent"

    Behavior on color {
        ColorAnimation {
            duration: Appearance.anim.durations.normal
            easing.type: Easing.BezierSpline
            easing.bezierCurve: Appearance.anim.curves.standard
        }
    }

    Behavior on border.color {
        ColorAnimation {
            duration: Appearance.anim.durations.normal
            easing.type: Easing.BezierSpline
            easing.bezierCurve: Appearance.anim.curves.standard
        }
    }
}