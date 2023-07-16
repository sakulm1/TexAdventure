//
//  Data.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import Foundation
import SwiftUI
let Spinne: Enemy = Enemy(name: "Spinne", life: 6, attackProbability: 1, defenseProbability: 1, damage: 4)


let story = Story(pages: [
    //0
    StoryPageCategory.storyPage(StoryPage(text: """
              Du erwachst in einem dunklen Raum. Ein schwacher Lichtstrahl fällt durch ein Fenster auf eine Tür. Die Neugier treibt dich voran. Was wirst du tun?
              """,
              time: 5,
              choices:[
                Choice(text: "Raum untersuchen", destination: 1),
                Choice(text: "Tür öffnen", destination: 5),
                Choice(text: "An Tür Klopfen", destination: 3),
                Choice(text: "Fenster öffnen", destination: 4)
              ]
             )),
    //1
    StoryPageCategory.storyPage(StoryPage(text: """
              Du beginnst den Raum sorgfältig zu durchsuchen, in der Hoffnung auf Hinweise oder Gegenstände, die dir helfen könnten. Deine Hände tasten vorsichtig die Wände ab, während du den Blick über den Boden schweifen lässt. Plötzlich spürst du etwas Seltsames an einer der Wänden. Mit großer Neugier untersuchst du es genauer und entdeckst eine versteckte Schaltfläche. Was könnte das wohl bedeuten?
              """,
              time: 5,
              choices:[
                Choice(text: "Die Schaltfläche drücken", destination: 0),
                Choice(text: "Die Schaltfläche drücken.", destination: 0),
                Choice(text: "Nach Gegenständen suchen", destination: 0),
                Choice(text: "Die Wände genauer untersuchen.", destination: 0)
              ]
             )),
    //2
    StoryPageCategory.storyPage(StoryPage(text: """
            Du entscheidest dich, die Tür zu öffnen und betrittst den nächsten Raum. Der Raum ist hell erleuchtet und gefüllt mit ungewöhnlichen Gegenständen. Du siehst eine große Truhe in der Ecke, einen alten Schreibtisch mit merkwürdigen Symbolen und eine Tür auf der gegenüberliegenden Seite. Die Atmosphäre ist gespannt und du spürst, dass jede Entscheidung, die du jetzt triffst, von Bedeutung sein könnte. Was wirst du als Nächstes tun?
            """,
            time: 5,
            choices: [
                Choice(text: "Die Truhe genauer untersuchen.", destination: 0),
                Choice(text: "Den Schreibtisch durchsuchen.", destination: 0),
                Choice(text: "Die Symbole genauer betrachten.", destination: 0),
                Choice(text: "Die Tür öffnen.", destination: 0)
            ]
            )),
    //3
    StoryPageCategory.storyPage(StoryPage(text: """
             Du klopfst vorsichtig an die Tür und wartest gespannt auf eine Antwort. Nach einem Moment des Schweigens hörst du leise Schritte auf der anderen Seite. Die Tür öffnet sich langsam und ein mysteriöser Fremder steht vor dir. Sein Blick ist durchdringend und seine Stimme flüstert: "Du bist endlich hier. Ich habe auf dich gewartet. Folge mir." Du zögerst einen Moment, bevor du dich entscheidest, ihm zu folgen. Was mag dieser Fremde über dich wissen?
            """,
            time: 5,
            choices: [
                Choice(text: "Den Fremden nach seinem Namen fragen.", destination: 0),
                Choice(text: "Nach dem Grund für sein Warten fragen", destination: 0),
                Choice(text: "Seinen Anweisungen folgen, ohne Fragen zu stellen.", destination: 0),
                Choice(text: " Die Tür wieder schließen und nach anderen Möglichkeiten suchen.", destination: 0)
            ]
            )),
    //4
    StoryPageCategory.storyPage(StoryPage(text: """
              Du machst dich daran, das Fenster zu öffnen und hoffst, eine Fluchtmöglichkeit zu finden. Doch zu deiner Überraschung lässt es sich nicht öffnen. Es scheint, als ob es absichtlich verschlossen wurde. Du blickst nach draußen und bemerkst eine unheimliche Landschaft mit düsteren Wolken und unerklärlichen Schatten. Es scheint, als ob diese Welt nicht die ist, die du kennst. Mit einem Gefühl der Beklemmung drehst du dich um und suchst nach anderen Optionen. Was wirst du als Nächstes versuchen?
            """,
            time: 5,
            choices: [
                Choice(text: "Nach einem Werkzeug suchen, um das Fenster zu öffnen.", destination: 0),
                Choice(text: "Laut um Hilfe rufen.", destination: 0),
                Choice(text: "Das Fenster genauer inspizieren, um Hinweise zu finden", destination: 0),
                Choice(text: "Nach anderen Fluchtmöglichkeiten im Raum suchen.", destination: 0)
            ]
            )),
    //5
    StoryPageCategory.fightPage(FightPage(monster: getRandomEnemy(), nextPageIfWon: 3, nextPageIfLost: 4))
    
    
])


func getRandomEnemy() -> Enemy{
    
    let monster: [Enemy] = [enemyGoblin, enemySpider, enemyKnight, enemyWorm]
    
    return monster.randomElement() ?? enemyGoblin
}

