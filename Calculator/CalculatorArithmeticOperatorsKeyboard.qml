import QtQuick 2.15

Item {
    id: root

    property int key_width
    property int key_height

    Grid{
        columns: 2
        rows: 2

        CalculatorKeys{button_text:'+' ; width: key_width ; height: key_height}
        CalculatorKeys{button_text:'-' ; width: key_width ; height: key_height}
        CalculatorKeys{button_text:'*' ; width: key_width ; height: key_height}
        CalculatorKeys{button_text:'/' ; width: key_width ; height: key_height}
    }
}
