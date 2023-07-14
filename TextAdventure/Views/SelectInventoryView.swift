//
//  SelectInventoryView.swift
//  TextAdventure
//
//  Created by Lukas Maile on 14.07.23.
//

import SwiftUI

struct SelectInventoryView: View {
    var body: some View {
        VStack{
            ScrollView{
                getItems(inventory: inventar)
            }
            Spacer()
            
            HStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray)
                    .shadow(radius: 10)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray)
                    .shadow(radius: 10)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray)
                    .shadow(radius: 10)
            }
        }
    }
}

struct SelectInventoryView_Previews: PreviewProvider {
    static var previews: some View {
        SelectInventoryView()
    }
}
