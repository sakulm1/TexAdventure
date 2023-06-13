//
//  InventoryData.swift
//  TextAdventure
//
//  Created by Lukas Maile on 13.06.23.
//

import Foundation
import SwiftUI


//sample data
let Inventar = InventoryModel(slots: [

InventorySlot(item: schwert, id: 1),
InventorySlot(item: brot, id: 2),
InventorySlot(item: gold, id: 3)

]
)

let schwert = InvItem(name: "Schwert", id: 1, durability: 20, count: 1)
let brot = InvItem(name: "Brot", id: 2, durability: 100, count: 15)
let gold = InvItem(name: "Gold", id: 3, durability: 100, count: 4)
