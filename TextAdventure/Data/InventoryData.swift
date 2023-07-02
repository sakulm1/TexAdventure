//
//  InventoryData.swift
//  TextAdventure
//
//  Created by Lukas Maile on 13.06.23.
//

import Foundation
import SwiftUI


//sample data
let schwert1 = Weapon(name: "Schwert", image: "swordTest", value: 46, damage: 100, haltbarkeit: 6)
let food1 = Food(name: "Brot", image: "swordTest", value: 5, addLife: 5)
let stein1 = GeneralItem(name: "Stein", image: "swordTest", value: 1)
let stock = GeneralItem(name: "Stock", image: "swordTest", value: 4)
let karotte = Food(name: "Karotte", image: "swordTest", value: 2, addLife: 34)

//Waffen
let dolch = Weapon(name: "Dolch", image: "wandTest", value: 20, damage: 50, haltbarkeit: 3)
let rostigesSchwert = Weapon(name: "Rostiges Schwert", image: "Sword", value: 30, damage: 70, haltbarkeit: 4)
let zweiAexte = Weapon(name: "Zwei Äxte", image: "dualAxes", value: 40, damage: 90, haltbarkeit: 5)
let breitschwert = Weapon(name: "Breitschwert", image: "broadsword", value: 50, damage: 110, haltbarkeit: 6)
let legendäresSchwert = Weapon(name: "Legendäres Schwert", image: "legendarySword", value: 60, damage: 120, haltbarkeit: 10)
let legendäreAxt = Weapon(name: "Legendäre Axt", image: "legendaryAxe", value: 70, damage: 130, haltbarkeit: 10)
let legendärerHammer = Weapon(name: "Legendärer Hammer", image: "legendaryHammer", value: 80, damage: 140, haltbarkeit: 10)
let zauberstab = Weapon(name: "Zauberstab", image: "magicStaff", value: 0, damage: 0, haltbarkeit: 10)

//Essen
let apfel = Food(name: "Apfel", image: "apple", value: 10, addLife: 10)
let egg = Food(name: "Egg", image: "egg", value: 10, addLife: 5)
let steak = Food(name: "Steak", image: "steak", value: 20, addLife: 15)
let potato = Food(name: "Potato", image: "potato", value: 5, addLife: 3)
let beet = Food(name: "Beet", image: "beet", value: 8, addLife: 4)
let bacon = Food(name: "Bacon", image: "bacon", value: 15, addLife: 7)
let cheese = Food(name: "Cheese", image: "cheese", value: 25, addLife: 10)
let pretzel = Food(name: "Pretzel", image: "pretzel", value: 7, addLife: 3)
let chicken = Food(name: "Chicken", image: "chicken", value: 18, addLife: 9)
let avocado = Food(name: "Avocado", image: "avocado", value: 12, addLife: 6)
let potionOfLuck = Food(name: "Potion of Luck", image: "postion_luck", value: 30, addLife: 15)

let foodItems = [apfel, egg, steak, potato, beet, bacon, cheese, pretzel, chicken, avocado, potionOfLuck]



//generalItems
//
//let inventar = InventoryModel(slots: [
//    Slot(item: ItemType.weapon(dolch), id: UUID() , quantity: 1),
//    Slot(item: ItemType.food(apfel), id: UUID(), quantity: 3),
//    Slot(item: ItemType.weapon(rostigesSchwert), id: UUID() , quantity: 1),
//    Slot(item: ItemType.weapon(legendärerHammer), id: UUID() , quantity: 1),
//    Slot(item: ItemType.food(brot), id: UUID(), quantity: 3),
//    Slot(item: ItemType.generalItem(stein1), id: UUID(), quantity: 8)
//
//])

let inventar = InventoryModel(slots: [
    Slot(item: ItemType.food(apfel), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(egg), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(steak), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(potato), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(beet), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(bacon), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(cheese), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(pretzel), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(chicken), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(avocado), id: UUID(), quantity: 1),
    Slot(item: ItemType.food(potionOfLuck), id: UUID(), quantity: 1)
])










