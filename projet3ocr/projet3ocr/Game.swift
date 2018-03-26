//
//  Game.swift
//  projet3ocr
//
//  Created by MacBook DS on 14/03/2018.
//  Copyright © 2018 Djilali Sakkar. All rights reserved.
//

import Foundation
class Game {
    var characterType = ["combattant", "nain", "colosse", "mage"]
    var numberOfCharacter = 0
    var characterTypesChoosenForPlayer1 : [String] = []
    var characterTypesChoosenForPlayer2 : [String] = []
    var characterNamesChoosenForPlayer1 : [String] = []
    var characterNamesChoosenForPlayer2 : [String] = []
    
    
    
    func playerCharacterChoice(playerIndex: Int) {
        var numberOfCharacter = 0
        var characterType = ["combattant", "nain", "colosse", "mage"]
        
        
        if let playerName = readLine(){
            print("Bonjour \(playerName), nommez votre équipe:")
        }
        
        if let playerTeam = readLine(){
            print("Votre équipe se nomme: \(playerTeam).")
        }
        
        print("Choisissez vos personnages:")
        
        repeat {
            for (index, value) in characterType.enumerated() {
                print("\(index + 1): \(value)")
            }
            if let character = readLine(){
                
                switch character {
                    
                    
                case "1": print("Vous avez choisis un \(characterType[0])")
                numberOfCharacter += 1
                if playerIndex == 1 {
                    characterTypesChoosenForPlayer1.append(characterType[0])
                }else if playerIndex == 2{
                    characterTypesChoosenForPlayer2.append(characterType[0])
                }
                print("Nommez votre \(characterType[0])")
                while let fighterPlayer = readLine() {
                    
                    
                    if playerIndex == 1 && !characterNamesChoosenForPlayer1.contains(fighterPlayer) && !characterNamesChoosenForPlayer2.contains(fighterPlayer){
                        characterNamesChoosenForPlayer1.append(fighterPlayer)
                        print("Votre \(characterType[0]) se nomme : \(fighterPlayer)")
                        print("Vos personnages se nomment: \(characterNamesChoosenForPlayer1)")
                        break
                    }
                        
                    else if playerIndex == 2 && !characterNamesChoosenForPlayer2.contains(fighterPlayer) && !characterNamesChoosenForPlayer1.contains(fighterPlayer){
                        characterNamesChoosenForPlayer2.append(fighterPlayer)
                        print("Votre \(characterType[0]) se nomme : \(fighterPlayer)")
                        print("Vos personnages se nomment: \(characterNamesChoosenForPlayer2)")
                        break
                    }
                    else {
                        print("Ce nom existe déjà.")
                    }
                    
                    print("Entrez un nouveau nom:")
                    
                }
                characterType.remove(at: 0)
                    
                case "2": print("Vous avez choisis un \(characterType[1])")
                numberOfCharacter += 1
                if playerIndex == 1{
                    characterTypesChoosenForPlayer1.append(characterType[1])
                } else if playerIndex == 2{
                    characterTypesChoosenForPlayer2.append(characterType[1])
                }
                print("Nommez votre \(characterType[1])")
                while let dwarfPlayer = readLine() {
                    
                    
                    
                    if playerIndex == 1 && !characterNamesChoosenForPlayer1.contains(dwarfPlayer) && !characterNamesChoosenForPlayer2.contains(dwarfPlayer){
                        characterNamesChoosenForPlayer1.append(dwarfPlayer)
                        print("Votre \(characterType[1]) se nomme : \(dwarfPlayer)")
                        print("Vos personnages se nomment: \(characterNamesChoosenForPlayer1)")
                        break
                    }
                        
                    else if playerIndex == 2 && !characterNamesChoosenForPlayer2.contains(dwarfPlayer) && !characterNamesChoosenForPlayer1.contains(dwarfPlayer){
                        characterNamesChoosenForPlayer2.append(dwarfPlayer)
                        print("Votre \(characterType[1]) se nomme : \(dwarfPlayer)")
                        print("Vos personnages se nomment: \(characterNamesChoosenForPlayer2)")
                        break
                    }
                    else {
                        print("Ce nom existe déjà.")
                    }
                    
                    print("Entrez un nouveau nom:")
                    
                }
                
                characterType.remove(at: 1)
                    
                case "3": print("Vous avez choisis un \(characterType[2])")
                numberOfCharacter += 1
                if playerIndex == 1{
                    characterTypesChoosenForPlayer1.append(characterType[2])
                } else if playerIndex == 2{
                    characterTypesChoosenForPlayer2.append(characterType[2])
                }
                print("Nommez votre \(characterType[2])")
                while let colossusPlayer = readLine() {
                    
                    
                    
                    if playerIndex == 1 && !characterNamesChoosenForPlayer1.contains(colossusPlayer) && !characterNamesChoosenForPlayer2.contains(colossusPlayer){
                        characterNamesChoosenForPlayer1.append(colossusPlayer)
                        print("Votre \(characterType[2]) se nomme : \(colossusPlayer)")
                        print("Vos personnages se nomment: \(characterNamesChoosenForPlayer1)")
                        break
                    }
                        
                    else if playerIndex == 2 && !characterNamesChoosenForPlayer2.contains(colossusPlayer) && !characterNamesChoosenForPlayer1.contains(colossusPlayer){
                        characterNamesChoosenForPlayer2.append(colossusPlayer)
                        print("Votre \(characterType[2]) se nomme : \(colossusPlayer)")
                        print("Vos personnages se nomment: \(characterNamesChoosenForPlayer2)")
                        break
                    }
                    else {
                        print("Ce nom existe déjà.")
                    }
                    
                    print("Entrez un nouveau nom:")
                    
                }
                characterType.remove(at: 2)
                    
                case "4": print("Vous avez choisis un \(characterType[3])")
                numberOfCharacter += 1
                if playerIndex == 1{
                    characterTypesChoosenForPlayer1.append(characterType[3])
                } else if playerIndex == 2{
                    characterTypesChoosenForPlayer2.append(characterType[3])
                }
                print("Nommez votre \(characterType[3])")
                while let magusPlayer = readLine() {
                    
                    
                    
                    if playerIndex == 1 && !characterNamesChoosenForPlayer1.contains(magusPlayer) && !characterNamesChoosenForPlayer2.contains(magusPlayer){
                        characterNamesChoosenForPlayer1.append(magusPlayer)
                        print("Votre \(characterType[3]) se nomme : \(magusPlayer)")
                        print("Vos personnages se nomment: \(characterNamesChoosenForPlayer1)")
                        break
                    }
                        
                    else if playerIndex == 2 && !characterNamesChoosenForPlayer2.contains(magusPlayer) && !characterNamesChoosenForPlayer1.contains(magusPlayer){
                        characterNamesChoosenForPlayer2.append(magusPlayer)
                        print("Votre \(characterType[3]) se nomme : \(magusPlayer)")
                        print("Vos personnages se nomment: \(characterNamesChoosenForPlayer2)")
                        break
                    }
                    else {
                        print("Ce nom existe déjà.")
                    }
                    
                    print("Entrez un nouveau nom:")
                    
                }
                characterType.remove(at: 3)
                    
                default: print("Je ne comprends pas")
                    
                }
                
            }
            if numberOfCharacter < 3{
                print("Choisissez un autre personnage:")
            }
            
            if numberOfCharacter == 3 && playerIndex == 1{
                print("Vous avez choisis vos 3 personnages: \(characterTypesChoosenForPlayer1), ils se nomment: \(characterNamesChoosenForPlayer1).")
            } else if numberOfCharacter == 3 && playerIndex == 2{
                print("Vous avez choisis vos 3 personnages: \(characterTypesChoosenForPlayer2), ils se nomment: \(characterNamesChoosenForPlayer2).")
            }
            
            
        } while numberOfCharacter < 3
    }
}

