//
//  FightView.swift
//  TextAdventure
//
//  Created by Lukas Maile on 02.07.23.
//

import SwiftUI

struct FightView: View {
    var image_Character: String = "wizard"
    var image_ememy: String = "enemy_spider"
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            ZStack{
                Image(image_ememy)
                    .scaleEffect(1.5)
                Hearts(life: 10)
                    .offset(y: 100)
            }
            Spacer()
            ZStack{
                Image(image_Character)
                    .scaleEffect(1.5)
                Hearts(life: 10)
                    .offset(y: 120)
            }
            Spacer()
            VStack{
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
                }.padding()
                HStack{
                    Text("Attack")
                        .frame(width: 140)
                        .controlSize(.large)
                        .padding()
                        .background(Capsule().foregroundColor(.blue))
                        .foregroundColor(.white)
                    Text("Use")
                        .frame(width: 140)
                        .controlSize(.large)
                        .padding()
                        .background(Capsule().foregroundColor(.blue))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct FightView_Previews: PreviewProvider {
    static var previews: some View {
        FightView()
    }
}
