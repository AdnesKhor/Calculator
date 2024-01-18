import QtQuick 2.15

Item {
    id: root

    property int key_width
    property int key_height

    signal sendTxt(string button_txt)

    Column{
        CalculatorKeys{
            button_text: '='
            width: key_width
            height: key_height

            onSendText: root.sendTxt(button_text)
        }

        CalculatorKeys{
            button_text: 'C'
            width: key_width
            height: key_height

            onSendText: root.sendTxt(button_text)
        }
    }

}
