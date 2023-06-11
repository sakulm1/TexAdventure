//
//  Data.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import Foundation
import SwiftUI

let story = Story(pages: [
    //0
    StoryPage(text: """
              Du erwachst in einem dunklen Raum. Ein schwacher Lichtstrahl fällt durch ein Fenster auf eine Tür. Die Neugier treibt dich voran. Was wirst du tun?
              """,
              choices:[
                choice(text: "Raum untersuchen", destination: 1),
                choice(text: "Tür öffnen", destination: 2),
                choice(text: "An Tür Klopfen", destination: 3),
                choice(text: "Fenster öffnen", destination: 4)
              ]
             ),
    //1
    StoryPage(text: """
              Du beginnst den Raum sorgfältig zu durchsuchen, in der Hoffnung auf Hinweise oder Gegenstände, die dir helfen könnten. Deine Hände tasten vorsichtig die Wände ab, während du den Blick über den Boden schweifen lässt. Plötzlich spürst du etwas Seltsames an einer der Wänden. Mit großer Neugier untersuchst du es genauer und entdeckst eine versteckte Schaltfläche. Was könnte das wohl bedeuten?
              """,
              choices:[
                choice(text: "Die Schaltfläche drücken", destination: 0),
                choice(text: " Die Schaltfläche drücken.", destination: 0),
                choice(text: "Nach Gegenständen suchen", destination: 0),
                choice(text: "Die Wände genauer untersuchen.", destination: 0)
              ]
             ),
    //2
    StoryPage(text: """
              Du entscheidest dich, die Tür zu öffnen und betrittst den nächsten Raum. Der Raum ist hell erleuchtet und gefüllt mit ungewöhnlichen Gegenständen. Du siehst eine große Truhe in der Ecke, einen alten Schreibtisch mit merkwürdigen Symbolen und eine Tür auf der gegenüberliegenden Seite. Die Atmosphäre ist gespannt und du spürst, dass jede Entscheidung, die du jetzt triffst, von Bedeutung sein könnte. Was wirst du als Nächstes tun?
              """,
              choices:[
                choice(text: "Die Truhe genauer untersuchen.", destination: 0),
                choice(text: "Den Schreibtisch durchsuchen.", destination: 0),
                choice(text: "Die Symbole genauer betrachten.", destination: 0),
                choice(text: "Die Tür öffnen.", destination: 0)
              ]
             ),
    //3
    StoryPage(text: """
              Du klopfst vorsichtig an die Tür und wartest gespannt auf eine Antwort. Nach einem Moment des Schweigens hörst du leise Schritte auf der anderen Seite. Die Tür öffnet sich langsam und ein mysteriöser Fremder steht vor dir. Sein Blick ist durchdringend und seine Stimme flüstert: "Du bist endlich hier. Ich habe auf dich gewartet. Folge mir." Du zögerst einen Moment, bevor du dich entscheidest, ihm zu folgen. Was mag dieser Fremde über dich wissen?
              """,
              choices:[
                choice(text: "Den Fremden nach seinem Namen fragen.", destination: 0),
                choice(text: "Nach dem Grund für sein Warten fragen", destination: 0),
                choice(text: "Seinen Anweisungen folgen, ohne Fragen zu stellen.", destination: 0),
                choice(text: " Die Tür wieder schließen und nach anderen Möglichkeiten suchen.", destination: 0)
              ]
             ),
    //4
    StoryPage(text: """
              Du machst dich daran, das Fenster zu öffnen und hoffst, eine Fluchtmöglichkeit zu finden. Doch zu deiner Überraschung lässt es sich nicht öffnen. Es scheint, als ob es absichtlich verschlossen wurde. Du blickst nach draußen und bemerkst eine unheimliche Landschaft mit düsteren Wolken und unerklärlichen Schatten. Es scheint, als ob diese Welt nicht die ist, die du kennst. Mit einem Gefühl der Beklemmung drehst du dich um und suchst nach anderen Optionen. Was wirst du als Nächstes versuchen?
              """,
              choices:[
                choice(text: "Nach einem Werkzeug suchen, um das Fenster zu öffnen.", destination: 0),
                choice(text: "Laut um Hilfe rufen.", destination: 0),
                choice(text: "Das Fenster genauer inspizieren, um Hinweise zu finden", destination: 0),
                choice(text: "Nach anderen Fluchtmöglichkeiten im Raum suchen.", destination: 0)
              ]
             )
    ]
)
