//
//  FightView.swift
//  TextAdventure
//
//  Created by Lukas Maile on 02.07.23.
//

import SwiftUI

struct FightView: View {
    var image_Character: String = "wizard"
    @State var monster: Enemy
    var afterWin: Int
    var HauptCharakter: MainCharacter
    @State var life: Int
    @State var selectetWeapon = dolch
    @State var enemyAlife = true
    var newFight: Fight
        
    init(monster: Enemy, afterWin: Int, HauptCharakter: MainCharacter, life: Int) {
        self.monster = monster
        self.afterWin = afterWin
        self.HauptCharakter = HauptCharakter
        self.life = life
        self.newFight = Fight(mainCahracter: HauptCharakter, enemy: monster)
    }
     
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            VStack{
                getEnemyPic()
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
                    Button("Attack"){
                        fight()
                    }
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
    
    func fight(){
        
        newFight.attackEnemy(possibility: selectetWeapon.value / 3 , weapon: selectetWeapon)
    }
    
    func getEnemyPic() -> some View{
        
        if enemyAlife {
            return AnyView{
                VStack{
                    Image(monster.image)
                        .scaleEffect(3)
                    HealthBar(life: monster.life)
                }
            }
        }else{
            return AnyView{
                VStack{
                    Image(monster.image)
                        .scaleEffect(3)
                    HealthBar(life: monster.life)
                }
            }
        }
    }
}




struct FightView_Previews: PreviewProvider {
    static var previews: some View {
        FightView(monster: getRandomEnemy(), afterWin: 4, HauptCharakter: MainCharacter(life: 9, name: "", strenght: 3), life: 8)
    }
}
