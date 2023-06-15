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
    var slots: [InventorySlot]
    
    subscript(_ inventoryIndex: Int) -> InventorySlot? {
        guard inventoryIndex >= 0 && inventoryIndex < slots.count else {
            return nil
        }
        return slots[inventoryIndex]
    }
}

struct InventorySlot {
    var item: ItemType
    var quantity: Int
}

struct Effect {
    var name: String
    // Weitere Eigenschaften
}

struct Enchantment{
    var name: String
    //weitere Verzauberungen
}

enum ItemType {
    case Schwert(Schwert)
    case fisch(Fisch)
    case apfel(Apfel)
    case gold(Gold)
    case holz(Holz)
}

//Waffen
struct Schwert{
    var name = "Schwert"
    var addedName: String //z.b ... der Verdammnis
    //var enchantments: [Enchantment]
    var strength: Int   //ungefährer Wert der dem Gegner bei einem Angriff weggenommen wird
    var durability: Int
    var image: Image = Image(systemName: "scissors")
}

//Essen
struct Fisch{
    var name = "Fisch"
    var addLife = 3
    var Effect: Effect
    var image: Image = Image(systemName: "fish")

}

struct Apfel{
    var name = "Apfel"
    var addLife = 1
    var Effect: Effect
    var image: Image = Image(systemName: "apple.logo")
}

//Gegenstände

struct Gold{
    var name = "Gold"
    var Value: Int
    var image: Image = Image(systemName: "dollarsign")
}

struct Holz{
    var name = "Holz"
    var value: Int
    var image: Image = Image(systemName: "tree")
}







