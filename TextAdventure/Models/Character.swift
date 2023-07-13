import SwiftUI


struct MainCharacter{
    var name: String
    @State var life: Int
    //var xp: 0
    var inventory: InventoryModel = inventar
    var strength: Int
//    var effect: Effect
    
    init(life: Int,name: String,strenght: Int){
        self.life = life
        self.name = name
//        self.effect = effect
        self.strength = strenght
    }
}

//>##############################>
//||                            ||
//||         Enemys             ||
//||                            ||
//>##############################>

struct Enemy{
    var name: String
    var life: Int
    var attackProbability: Int
    var defenseProbability: Int
    var damage: Int
}




