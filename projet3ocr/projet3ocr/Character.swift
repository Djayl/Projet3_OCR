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
    
    var cure: Int
    var type: CharacterType
    var damage: Int
    var life: Int
    let name: String
    
    
    init(name: String, type: CharacterType){
        self.type = type
        self.name = name
        
        switch self.type {
        case .Fighter:
            self.life = 100
            self.damage = 10
            self.cure = 0
            
        case .Colossus:
            self.life = 150
            self.damage = 5
            self.cure = 0
        case .Dwarf:
            self.life = 50
            self.damage = 25
            self.cure = 0
        case .Magus:
            self.life = 50
            self.damage = 0
            self.cure = 10
            
        }
    }
    
    
    // Creation of the attack function, one for all the characters
    
    func attack(opponent: Character){
        if life > 0 && opponent.life > 0 {
            opponent.life -= damage
            print("Vous avez attaqué \(opponent.name), \(opponent.name) a désormais \(opponent.life) de points de vie")
        }
        else {
            if life <= 0 {
                print("\(name) est mort. Choisissez un autre assaillant.")
            }else if opponent.life <= 0 {
                print("\(opponent.name) est mort. Choisissez un autre opposant.")
            }
        }
        
    }
    
    
    func Healing(comrade: Character) {
        if comrade.life > 0 {
            comrade.life += cure
            print("Je vous guéris, votre vie est de \(comrade.life) points.")
        } else if comrade.life <= 0{
            print("Vous êtes mort, je ne peux pas vous réanimer.")
        }else if type != .Magus{
            print("Je ne suis pas un Mage, je ne peux rien pour vous.")
        }
        
    }
}
