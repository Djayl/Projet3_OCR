//
//  Game.swift
//  projet3ocr
//
//  Created by MacBook DS on 14/03/2018.
//  Copyright © 2018 Djilali Sakkar. All rights reserved.
//

import Foundation
class Game {
    
    var numberOfCharacter = 0
    var characterChoosenForPlayer1 : [Character] = []
    var characterChoosenForPlayer2 : [Character] = []
    let characterType = ["combattant", "nain", "colosse", "mage"]
    var player1Name: [String] = []
    var player2Name: [String] = []
    var player1TeamName: [String] = []
    var player2TeamName: [String] = []
    
    
    
    func playerCharacterChoice(playerIndex: Int) {
        var numberOfCharacter = 0
        let characterType = ["combattant", "nain", "colosse", "mage"]
        
        if let playerName = readLine(){
            print("Bonjour \(playerName), nommez votre équipe:")
            if playerIndex == 1{
                player1Name.append(playerName)
            } else if playerIndex == 2{
                player2Name.append(playerName)
            }
        }
        
        if let playerTeam = readLine(){
            print("Votre équipe se nomme: \(playerTeam).")
            if playerIndex == 1{
                player1TeamName.append(playerTeam)
            } else if playerIndex == 2{
                player2TeamName.append(playerTeam)
            }
        }
        
        print("Choisissez vos personnages:")
        
        repeat {
            
            for (index, value) in characterType.enumerated() {
                print("\(index + 1): \(value)")
            }
            if let character = readLine(){
                
                switch character {
                    
                case "1" : print("Vous avez choisis un \(CharacterType.Fighter.rawValue)")
                numberOfCharacter += 1
                
                print("Nommez votre \(CharacterType.Fighter.rawValue)")
                while let fighterPlayer = readLine() {
                    
                    if !characterChoosenForPlayer1.contains(where: {$0.name == fighterPlayer} ) && !characterChoosenForPlayer2.contains(where: {$0.name == fighterPlayer} ){
                        print("Votre \(CharacterType.Fighter.rawValue) se nomme : \(fighterPlayer)")
                        
                        if playerIndex == 1{
                            
                            characterChoosenForPlayer1.append(Character(name: fighterPlayer, type: .Fighter))
                            
                        }else if playerIndex == 2{
                            
                            characterChoosenForPlayer2.append(Character(name: fighterPlayer, type: .Fighter))
                            
                        }
                        break
                    }
                    print("Ce nom existe déjà.")
                    
                    print("Entrez un nouveau nom:")
                    }
                    
                case "2": print("Vous avez choisis un \(CharacterType.Dwarf.rawValue)")
                numberOfCharacter += 1
                
                print("Nommez votre \(CharacterType.Dwarf.rawValue)")
                while let dwarfPlayer = readLine() {
                    
                    if !characterChoosenForPlayer1.contains(where: {$0.name == dwarfPlayer} ) && !characterChoosenForPlayer2.contains(where: {$0.name == dwarfPlayer} ){
                        print("Votre \(CharacterType.Dwarf.rawValue) se nomme : \(dwarfPlayer)")
                        
                        if playerIndex == 1{
                            
                            characterChoosenForPlayer1.append(Character(name: dwarfPlayer, type: .Dwarf))
                            
                        }else if playerIndex == 2{
                            
                            characterChoosenForPlayer2.append(Character(name: dwarfPlayer, type: .Dwarf))
                            
                        }
                        break
                    }
                    print("Ce nom existe déjà.")
                    
                    print("Entrez un nouveau nom:")
                    }
                    
                case "3": print("Vous avez choisis un \(CharacterType.Colossus.rawValue)")
                numberOfCharacter += 1
                
                print("Nommez votre \(CharacterType.Colossus.rawValue)")
                while let colossusPlayer = readLine() {
                    
                    if !characterChoosenForPlayer1.contains(where: {$0.name == colossusPlayer} ) && !characterChoosenForPlayer2.contains(where: {$0.name == colossusPlayer} ){
                        print("Votre \(CharacterType.Colossus.rawValue) se nomme : \(colossusPlayer)")
                        
                        if playerIndex == 1{
                            
                            characterChoosenForPlayer1.append(Character(name: colossusPlayer, type: .Colossus))
                            
                        }else if playerIndex == 2{
                            
                            characterChoosenForPlayer2.append(Character(name: colossusPlayer, type: .Colossus))
                            
                        }
                        break
                    }
                    print("Ce nom existe déjà.")
                    
                    print("Entrez un nouveau nom:")
                    }
                    
                case "4": print("Vous avez choisis un \(CharacterType.Magus.rawValue)")
                numberOfCharacter += 1
                print("Nommez votre \(CharacterType.Magus.rawValue)")
                while let magusPlayer = readLine() {
                    
                    if !characterChoosenForPlayer1.contains(where: {$0.name == magusPlayer} ) && !characterChoosenForPlayer2.contains(where: {$0.name == magusPlayer} ){
                        print("Votre \(CharacterType.Magus.rawValue) se nomme : \(magusPlayer)")
                        
                        if playerIndex == 1{
                            
                            characterChoosenForPlayer1.append(Character(name: magusPlayer, type: .Magus))
                            
                        }else if playerIndex == 2{
                            
                            characterChoosenForPlayer2.append(Character(name: magusPlayer, type: .Magus))
                            
                        }
                        break
                    }
                    print("Ce nom existe déjà.")
                    
                    print("Entrez un nouveau nom:")
                    }
                    
                default: print("Je ne comprends pas")
                    
                }
            }
            if numberOfCharacter < 3{
                print("Choisissez un autre personnage:")
            }
            if numberOfCharacter == 3 && playerIndex == 1{
                print("Votre équipe est constituée de:")
                for i in 0...[characterChoosenForPlayer1].count + 1{
                    print("\(characterChoosenForPlayer1[i].name) de type \(characterChoosenForPlayer1[i].type.rawValue)")
                }
            } else if numberOfCharacter == 3 && playerIndex == 2{
                print("Votre équipe est constituée de:")
                for i in 0...[characterChoosenForPlayer2].count + 1{
                    print("\(characterChoosenForPlayer2[i].name) de type \(characterChoosenForPlayer1[i].type.rawValue)")
                }
            }
            
        } while numberOfCharacter < 3
    }
    
    func input() -> Int {
        let strData = readLine();
        
        return Int(strData!)!
    }
    
// The player chooses the characters he wants to play with
    
    func play(playerIndex: Int){
        var assailantChoice: Int
        var opponentChoice: Int
        
        repeat {
            print("Choisissez votre assaillant:")
            print("1. \(characterChoosenForPlayer1[0].name) de type \(characterChoosenForPlayer1[0].type)")
            print("2. \(characterChoosenForPlayer1[1].name) de type \(characterChoosenForPlayer1[1].type)")
            print("3. \(characterChoosenForPlayer1[2].name) de type \(characterChoosenForPlayer1[2].type)")
            assailantChoice = input()
        } while assailantChoice != 1 && assailantChoice != 2 && assailantChoice != 3
        
        print()
        
        repeat {
            print("Choisissez votre opposant:")
            print("1. \(characterChoosenForPlayer2[0].name) de type \(characterChoosenForPlayer2[0].type)")
            print("2. \(characterChoosenForPlayer2[1].name) de type \(characterChoosenForPlayer2[1].type)")
            print("3. \(characterChoosenForPlayer2[2].name) de type \(characterChoosenForPlayer2[2].type)")
            opponentChoice = input()
        } while opponentChoice != 1 && opponentChoice != 2 && opponentChoice != 3
    }
}
