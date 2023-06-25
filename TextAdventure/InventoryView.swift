//
//  InventoryView.swift
//  TextAdventure
//
//  Created by Lukas Maile on 13.06.23.
//

import SwiftUI

struct InventoryView: View {
    let inventory: InventoryModel
    var body: some View {
        VStack{
            getItems(inventory: inventory)
            }
        }
    }


struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView(inventory: inventar)
    }
}

func getItems(inventory: InventoryModel) -> some View {
    return AnyView(
        VStack {
                ForEach(inventory.slots, id: \.self) { slot in
                    switch slot.item {
                    case .weapon(let weapon):
                        Text(weapon.name)
                    case .generalItem(let generalItem):
                        Text(generalItem.name)
                    case .food(let food):
                        Text(food.name)
                    case .enchatmentItem(let enchantmentItem):
                        Text(enchantmentItem.name)
                    case .keyItem(let keyItem):
                        Text(keyItem.name)
                    }
                }
        }
    )

}


