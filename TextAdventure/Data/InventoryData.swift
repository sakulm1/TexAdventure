//
//  InventoryData.swift
//  TextAdventure
//
//  Created by Lukas Maile on 13.06.23.
//

import Foundation
import SwiftUI

let schwert1 = Weapon(name: "Schwert1", value: 46, damage: 1, haltbarkeit: 6)

//sample data
let inventar = InventoryModel(slots: [

    Slot(item: ItemType.weapon(schwert1) , quantity: 1)

])









