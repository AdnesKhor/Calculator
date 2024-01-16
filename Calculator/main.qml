import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 580
    visible: true
    title: qsTr("Simple Calculator")

    color: "gray"

    Rectangle{
        id: calculatorMonitor
        width: 600

        height: 100
        color: "red"
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 20
        }
    }

    Rectangle{
        id: calculatorKeyboard

        width: 600
        height: 400

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: calculatorMonitor.bottom

        color: "purple"

        Rectangle{
            id: calculatorNumberKeys
            width: 300
            height: 320
            color: "green"

            anchors{
                top: parent.top
                topMargin: 20
                left: parent.left
                leftMargin: 50
            }

            border.color: 'black'
            border.width: 3

            CalculatorNumbersKeyboard{
                id: actual_keyboard_numbers

                width: parent.width * 0.8
                height: parent.height * 0.4
                key_width: parent.width * 0.2
                key_height: parent.height * 0.2

                anchors{
                    horizontalCenter: calculatorNumberKeys.horizontalCenter
                    horizontalCenterOffset: 25
                    verticalCenter: calculatorNumberKeys.verticalCenter
                    verticalCenterOffset: -70
                }
            }

            CalculatorKeys{
                id: actual_keyboard_0

                width: actual_keyboard_numbers.key_width
                height: actual_keyboard_numbers.key_height

                button_text: '0'
                anchors{
                    horizontalCenter: calculatorNumberKeys.horizontalCenter
                    horizontalCenterOffset: -5
                    verticalCenter: calculatorNumberKeys.verticalCenter
                    verticalCenterOffset: 90
                }
            }
        }

        Rectangle{
            id: calculatorArithmeticOperatorKeys
            width: 150
            height: 150
            color: "blue"

            border.color: 'black'
            border.width: 3

            anchors{
                top: parent.top
                left: calculatorNumberKeys.right
                topMargin: 20
                leftMargin: 50
            }

            CalculatorArithmeticOperatorsKeyboard{
                id: actual_keyboard_arithmetic_operators

                width: parent.width * 0.8
                height: parent.height * 0.8

                key_width: actual_keyboard_arithmetic_operators.width / 2
                key_height: actual_keyboard_arithmetic_operators.height / 2

                anchors{
                    left: parent.left
                    leftMargin: 17
                    top: parent.top
                    topMargin: 15
                }
            }
        }

        Rectangle{
            id: calculatorEqualAndCKeys
            width: 100
            height: 150
            color: "yellow"

            anchors{
                top: calculatorArithmeticOperatorKeys.bottom
                left: calculatorNumberKeys.right
                topMargin: 20
                leftMargin: 100
            }

            CalculatorEqualAndCKeysKeyboard{
                id: actual_keyboard_equal_and_c_keys

                width: calculatorEqualAndCKeys.width * 0.8
                height: calculatorEqualAndCKeys.height * 0.8
                key_width: actual_keyboard_equal_and_c_keys.width
                key_height: actual_keyboard_equal_and_c_keys.height / 2

                anchors{
                    horizontalCenter: parent.horizontalCenter
                    verticalCenter: parent.verticalCenter
                }
            }
        }
    }


}
