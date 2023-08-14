//
//  FightSystem.swift
//  TextAdventure
//
//  Created by Lukas Maile on 13.07.23.
//

import Foundation


class Fight{
    
    var mainCahracter: MainCharacter
    var enemy: Enemy
    
    init(mainCahracter: MainCharacter, enemy: Enemy) {
        self.mainCahracter = mainCahracter
        self.enemy = enemy
    }
    
    func enemyDamage(_ reduceLife: Int){
        enemy.life -= reduceLife
    }
    
    func characterDamage(_ reduceLife: Int){
        mainCahracter.life -= reduceLife
    }
    
    func attackCharacter(possibility: Int){
        let randomInt = Int.random(in: 1..<possibility)
        print(randomInt)
    }
    
    func attackEnemy(possibility: Int){
        let randomInt = Int.random(in: 1..<possibility)
        print(randomInt) 
    }
    
    func checkIfWon() -> Bool{
        if enemy.life <= 0{
            return true
        }else{
            return false
        }
    }
    
}
