// ==============================================
// =============== 功能页：全局设置 ===============
// ==============================================

import QtQuick 2.15
import QtQuick.Controls 2.15

import ".."
import "../../Widgets"
import "../../Themes"

TabPage {
    id: tabPage

    // 设置面板
    Panel {
        anchors.fill: parent
        anchors.margins: size_.spacing
        
        Item {
            anchors.fill: parent
            anchors.margins: size_.spacing
            Component.onCompleted: { // 将全局设置UI的父级重定向过来
                // 就算本页面删除，全局UI也不会被删，只会丢失父级
                qmlapp.globalConfigs.panelComponent.parent = this
            }
        }
    }

    // 字体设置面板
    FontPanel {
        anchors.fill: parent
        z: 10
    }
}