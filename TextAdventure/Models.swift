//
//  Models.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import Foundation

//>##############################>
//||                            ||
//||           Story            ||
//||                            ||
//>##############################>



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


//>##############################>
//||                            ||
//||         Inventory          ||
//||                            ||
//>##############################>


struct InventoryModel {
    var slots: [InventorySlot]
//
//    subscript(_ inventoryIndex: Int) -> InventorySlot{
//        return slots[inventoryIndex]
//    }
}

struct InventorySlot{
    var item: InvItem
    var id: Int
}

struct InvItem{
    var name: String
    var id: Int
    var durability: Int
    var count: Int
}

struct Weapon{
    var name: String
    var durability: Int
    var enchantments: [String] //add enchantments
}

struct Food{
    var name: String
    var addHalth: Int
    var reduceHalth: Int
    var effect: String //add Effects
}

struct Items{
    var name: String
    var worth: Int
    var tradabel: Bool
}

struct Effect{
    var name: String
//    var time: Int
//    var reduceLife: Int
//    var addLife: Int
//    var makeStronger: Int
//    var mekeWeaker: Int
//    var luck: Bool
}










