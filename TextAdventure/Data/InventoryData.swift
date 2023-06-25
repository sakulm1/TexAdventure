//
//  InventoryData.swift
//  TextAdventure
//
//  Created by Lukas Maile on 13.06.23.
//

import Foundation
import SwiftUI

let schwert1 = Weapon(name: "Schwert", value: 46, damage: 1, haltbarkeit: 6)
let food1 = Food(name: "Brot", image: nil, value: 5, addLife: 5)
let stein1 = GeneralItem(name: "Stein", value: 1)

//sample data
let inventar = InventoryModel(slots: [

    Slot(item: ItemType.weapon(schwert1), id: UUID() , quantity: 1),
    Slot(item: ItemType.food(food1), quantity: 1),
    Slot(item: ItemType.generalItem(stein1), quantity: 1)

])









