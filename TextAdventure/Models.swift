//
//  Models.swift
//  TexAdventure
//
//  Created by Lukas Maile on 11.06.23.
//

import Foundation
import SwiftUI

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
    var slots: [Slot]
    
    subscript(_ inventoryIndex: Int) -> Slot? {
        guard inventoryIndex >= 0 && inventoryIndex < slots.count else {
            return nil
        }
        return slots[inventoryIndex]
    }
}

struct Slot{
    var item: ItemType
    var quantity: Int
}

enum ItemType {
    case weapon(Weapon)
    case generalItem(GeneralItem)
    case food(Food)
    case enchatmentItem(EntchantmentItem)
    case keyItem(KeyItem)
}

struct Weapon {
    var name: String
   // var image: Image
    var value: Int
    var damage: Int
    var haltbarkeit: Int
//    var entchantments: [Entchantments]
    
}

struct GeneralItem {
    var name: String
    var image: Image
    var value: Int
//    var effect: Effect
    
}

struct Food {
    var name: String
    var image: Image
    var value: Int
//    var effect: Effect
    
}

struct EntchantmentItem {
    var name: String
    var image: Image
    var value: Int
    var itemCategory: [ItemType]
    var count: Int
    
}


struct KeyItem {
    var name: String
    var image: Image
    var value: Int
    
   
}



//struct Effect{
//
//}
//
//struct Enchantment{
//
//}





