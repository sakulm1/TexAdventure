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
        
    }
    
    func attackEnemy(possibility: Int){
        
    }
    
    
}