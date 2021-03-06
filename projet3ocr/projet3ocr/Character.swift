//
//  Character.swift
//  projet3ocr
//
//  Created by MacBook DS on 14/03/2018.
//  Copyright © 2018 Djilali Sakkar. All rights reserved.
//

import Foundation
// Enumeration for the type of the characters
enum CharacterType : String {
    case Dwarf = "Nain"
    case Colossus = "Colosse"
    case Magus = "Mage"
    case Fighter = "Combattant"
}

// Creation of the class Character

class Character {
    
   
    var type: CharacterType
    var weapon: Weapon
    var life: Int
    let name: String
    var chest: Weapon
    
    init(name: String, type: CharacterType){
        self.type = type
        self.name = name
        
        switch self.type {
        case .Fighter:
            self.life = 20
            self.weapon = Sword()
            self.chest = NewWeapon()
            
        case .Colossus:
            self.life = 20
            self.weapon = Mace()
            self.chest = NewWeapon()
            
        case .Dwarf:
            self.life = 20
            self.weapon = Ax()
            self.chest = NewWeapon()
            
        case .Magus:
            self.life = 50
            self.weapon = Wand()
            self.chest = NewWeapon()
        }
    }
    
    // Creation of the attack function, one for all the characters
    
    func attack(opponent: Character){
        opponent.life -= weapon.damage
        
        if opponent.life < 0 {
            opponent.life = 0
        }
        print("Vous avez attaqué \(opponent.name), \(opponent.name) a désormais \(opponent.life) de points de vie")
        
        // Retour au niveau de dommage initial
        
        
    }
    
    
    func Healing(comrade: Character) {
        if comrade.life > 0 {
            comrade.life -= weapon.damage
            print("Je vous guéris, votre vie est de \(comrade.life) points.")
        } else if comrade.life <= 0{
            print("Vous êtes mort, je ne peux pas vous réanimer.")
        }else if type != .Magus{
            print("Je ne suis pas un Mage, je ne peux rien pour vous.")
        }
        
    }
}

