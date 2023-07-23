//
//  FightView.swift
//  TextAdventure
//
//  Created by Lukas Maile on 02.07.23.
//

import SwiftUI

struct FightView: View {
    var image_Character: String = "wizard"
    var monster: Enemy
    var afterWin: Int
    @State var life: Int
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            VStack{
                Image(monster.image)
                    .scaleEffect(3)
                HealthBar(life: 5)
            }
            Spacer()
            VStack{
                Image(image_Character)
                    .scaleEffect(1.5)
                Hearts(life: life)
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
        }//.navigationBarBackButtonHidden(true)
    }
}

struct FightView_Previews: PreviewProvider {
    static var previews: some View {
        FightView(monster: getRandomEnemy(), afterWin: 4, life: 1)
    }
}
