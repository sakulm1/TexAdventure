//
//  FightView.swift
//  TextAdventure
//
//  Created by Lukas Maile on 10.08.23.
//


/// The `Fight` class represents a battle between a main character and an enemy.
class Fight {
    /// The main character participating in the fight.
    var mainCahracter: MainCharacter
    
    /// The enemy being fought against.
    var enemy: Enemy
    
    /// Initializes a new battle between the main character and an enemy.
    ///
    /// - Parameters:
    ///   - mainCahracter: The main character participating in the fight.
    ///   - enemy: The enemy being fought against.
    init(mainCahracter: MainCharacter, enemy: Enemy) {
        self.mainCahracter = mainCahracter
        self.enemy = enemy
    }
    
    /// Reduces the enemy's life by a specified amount.
    ///
    /// - Parameter reduceLife: The amount by which to reduce the enemy's life.
    func enemyDamage(_ reduceLife: Int) {
        enemy.life -= reduceLife
    }
    
    /// Reduces the main character's life by a specified amount.
    ///
    /// - Parameter reduceLife: The amount by which to reduce the main character's life.
    func characterDamage(_ reduceLife: Int) {
        mainCahracter.life -= reduceLife
    }
    
    /// Simulates an attack on the main character.
    ///
    /// - Parameter possibility: The upper limit for generating a random number.
    func attackCharacter(possibility: Int, weapon: Weapon) {
        var randomInt = Int.random(in: 1..<possibility)
        let weaponDamage = (weapon.damage / 8) * randomInt
        characterDamage(weaponDamage)
    }
    
    /// Simulates an attack on the enemy.
    ///
    /// - Parameter possibility: The upper limit for generating a random number.
    func attackEnemy(possibility: Int, weapon: Weapon) {
        var randomInt = Int.random(in: 1..<possibility)
        let weaponDamage = (weapon.damage / 8) * randomInt
        enemyDamage(weaponDamage)
    }
    
    /// Checks if the battle has been won by the main character.
    ///
    /// - Returns: `true` if the main character has won, otherwise `false`.
    func checkIfWon() -> Bool {
        if enemy.life <= 0 {
            return true
        } else {
            return false
        }
    }
    /// Get the life of the enemy
    ///
    /// - Returns: The life of the enemy as an `Integer`
    func getLifeEnemy() -> Int{
        return enemy.life
    }
    
    /// Get the life of the character
    ///
    /// - Returns: The life of the character as an `Integer`
    func getLifeCharacter() -> Int{
        return mainCahracter.life
    }
}
