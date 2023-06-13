import SwiftUI


struct MainCharacter{
    var name: String
    @State var life: Int
    //var xp: 0
    //var inventory: InventoryModel
    var strength: Int
    var effect: Effect
    
    init(life: Int,name: String, effect: Effect, strenght: Int){
        self.life = life
        self.name = name
        self.effect = effect
        self.strength = strenght
    }
}

