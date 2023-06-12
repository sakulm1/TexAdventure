//
//  Models.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import Foundation


struct choice{
    var text: String
    var destination: Int
}


struct StoryPage{
    var text: String
    var time: Int
    var choices: [choice]
    
    init(text: String, time: Int, choices: [choice]) {
        self.text = text
        self.time = time
        self.choices = choices
    }
}

struct Story{
    var pages: [StoryPage]
    
    subscript (_ pageIndex: Int) -> StoryPage{
        return pages[pageIndex]
    }
}


