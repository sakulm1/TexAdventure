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
        NavigationStack{
            VStack{
                ScrollView{
                    getItems(inventory: inventory)
                }
            }
        }
    }
    }


func getItems(inventory: InventoryModel) -> some View {
    return AnyView(
        VStack {
            ForEach(inventory.slots, id: \.id){ slot in
                    switch slot.item {
                    case .weapon(let weapon):
                        InventoryCard_Weapon(name: weapon.name, damage: weapon.damage, durability: weapon.haltbarkeit, value: weapon.value)
                    case .generalItem(let generalItem):
                        InventoryCard_GeneralItem(name: generalItem.name, value: generalItem.value, image: generalItem.image)
                    case .food(let food):
                        InventoryCard_Food(name: food.name, value: food.value, addLive: food.addLife)
                    }
                }
        }
    )
}


struct InventoryCard_Weapon: View{
    var name: String
    var damage: Int
    var durability: Int
    var value: Int
    var image: Image?
    var body: some View{
       return AnyView(
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 25)
                .fill(.purple)
                .frame(width: .infinity, height: 200)
                .opacity(0.3)
                .shadow(radius: 10)
                .padding()
            Text(name)
                .offset(x: 30 , y: -60)
                .font(.largeTitle)
            Text("Damage: " + String(damage))
                .font(.headline)
                .offset(x: 30, y: -20)
            Text("Durability: " + String(durability))
                .font(.headline)
                .offset(x: 30, y: 20)
            Text("Value: " + String(value))
                .font(.headline)
                .offset(x:30, y: 60)
        }
       )
    }
}

struct InventoryCard_Food: View{
    var name: String
    var value: Int
    var addLive: Int
    var image: Image?
    var body: some View{
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 25)
                .fill(.brown)
                .frame(width: .infinity, height: 200)
                .opacity(0.3)
                .shadow(radius: 10)
                .padding()
            Text(name)
                .offset(x: 30 , y: -60)
                .font(.largeTitle)
            Text("Add Life: " + String(addLive))
                .font(.headline)
                .offset(x: 30, y: -20)
            Text("Value: " + String(value))
                .font(.headline)
                .offset(x: 30, y: 20)
        }
    }
}


struct InventoryCard_GeneralItem: View{
    var name: String
    var value: Int
    var image: Image?
    
    var body: some View{
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 25)
                .fill(.gray)
                .frame(width: .infinity, height: 200)
                .opacity(0.3)
                .shadow(radius: 10)
                .padding()
            Text(name)
                .offset(x: 30 , y: -60)
                .font(.largeTitle)
            Text("Value: " + String(value))
                .font(.headline)
                .offset(x: 30, y: -20)
        }
    }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView(inventory: inventar)
    }
}

struct InventoryCard_GeneralItem_Previews: PreviewProvider{
    static var previews: some View{
        InventoryCard_GeneralItem(name: "Stein", value: 1, image: nil)
    }
}

struct InventoryCard_Weapon_Previews: PreviewProvider{
    static var previews: some View{
        InventoryCard_Weapon(name: "Schwert", damage: 5, durability: 100, value: 30, image: nil)
    }
}

struct InventoryCard_Food_Preview: PreviewProvider{
    static var previews: some View{
        InventoryCard_Food(name: "Brot", value: 3, addLive: 2, image: nil)
    }
}
