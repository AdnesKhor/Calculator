import QtQuick 2.15

Item {
    id: root

    //Text are determined when defining keyboard components.
    //Size are determined when defining keyboard components.
    //Hover and Press effect should be applied.
    property alias button_text : buttonText.text

    Rectangle{
        id: container

        border.color: 'black'
        border.width: 2

        anchors{
            fill: parent
        }

        color: {
            if(buttonMouseArea.containsMouse){
                'green';
            }else if(buttonMouseArea.containsPress){
                'yellow';
            }else{
                '#8eb69b'
            }
        }

        Text{
            id: buttonText
            font.pixelSize: 16

            anchors{
                centerIn: container
            }
        }

        MouseArea{
            id: buttonMouseArea

            anchors.fill: container
            hoverEnabled: true
            acceptedButtons: Qt.AllButtons
        }
    }
}
