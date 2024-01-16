import QtQuick 2.15

Item {
    id: root

    property int key_width;
    property int key_height;

    Grid {
        id: numberKeys
        columns: 3
        rows: 3

        Repeater{
            model: 9
            CalculatorKeys{
                button_text: index + 1
                width: key_width
                height: key_height
            }
        }
    }
}
