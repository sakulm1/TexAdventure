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

func getItems(inventory: InventoryModel) -> some View{
    return AnyView(
        VStack {
            List{
                ForEach(0..<inventory.slots.count) {index in
                        Text(inventory.slots[index].item.name + String(inventory.slots[index].item.count));
                }
            }
        }
    )
}
                


