import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
import TaoQuick 1.0 as Tao
import CppType 1.0
import Toou2D 1.0

Window {

    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    //////Toou2D////////
    T2DWorld{
            mouseAreaCursorShape: Qt.PointingHandCursor
            appStartupTheme: "White"
            appThemePaths: [
                "qrc:/themes/"
            ]
        }
    TButton{


    }
}
    ///////TaoQuick////////
//    signal qmlSignalA
//    Tester{
//    }

//    Rectangle {
//        id:rectPeizhi
//        anchors.left: rectLeft.right
//        anchors.top: parent.top
//        anchors.bottom: parent.bottom
//        width: parent.width - rectLeft.width
//        color: Qt.rgba(245 / 255, 245 / 255, 245/255, 1.0)
//        Tao.CusButton {
//            id: pei
//            width: 200
//            height: 50
//            Text {
//                anchors.centerIn: pei
//                text: qsTr("peizhi")
//            }
//        }
//        visible: false
//    }

//    Rectangle {
//        id:rectCeshi
//        anchors.left: rectLeft.right
//        anchors.top: parent.top
//        anchors.bottom: parent.bottom
//        width: parent.width - rectLeft.width
//        color: Qt.rgba(245 / 255, 245 / 255, 245/255, 1.0)
//        Tao.CusButton {
//            id: ce
//            width: 200
//            height: 50
//            Text {
//                anchors.centerIn: ce
//                text: qsTr("ceshi")
//            }

//        }
//        visible: false
//    }

//    Rectangle {
//        id:rectLeft
//        anchors.left: parent.left
//        anchors.top: parent.top
//        anchors.bottom: parent.bottom
//        width: 213
//        color: Qt.rgba(190 / 255, 190 / 255, 190 / 255, 1.0)
//        Flow {
//            anchors.top: rectLeft.top
//            anchors.centerIn: rectLeft
//            anchors.verticalCenterOffset  : -150
//            anchors.topMargin: 30
//            spacing: 10

//            flow: Flow.TopToBottom
//            Tao.CusButton {
//                id: btn_peizhi
//                width: rectLeft.width / 4 * 3
//                height: 50
//                MouseArea{
//                    anchors.fill: btn_peizhi
//                    //测试时点击左键或右键
//                    onClicked: {
//                            root.qmlSignalA()
//                          console.log('----qml 点击右键：QML发射信号')
//                        rectPeizhi.visible = true
//                        rectCeshi.visible = false
//                    }
//                }
//            }
//            Tao.CusButton {
//                id: btn_ceshi
//                width: rectLeft.width / 4 * 3
//                height: 50
//                MouseArea{
//                    anchors.fill: btn_ceshi
//                    //测试时点击左键或右键
//                    onClicked: {
//                          root.qmlSignalA()
//                          console.log('----qml 点击右键：QML发射信号')
//                          rectCeshi.visible = true
//                          rectPeizhi.visible = false
//                    }
//                }
//            }
//        }
//    }


//	ConfigAdapter{
//        id:cpp_obj
//        //也可以像原生QML对象一样操作，增加属性之类的
//    }



//    Component.onCompleted: {
//        root.onQmlSignalA.connect(cpp_obj.cppSlotA)
//    }

//}
