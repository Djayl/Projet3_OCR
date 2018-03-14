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
    var characterType = ["combattant", "nain", "colosse", "mage"]
    
    var characterTypesChoosenForPlayer1 : [String] = []
    var characterTypesChoosenForPlayer2 : [String] = []
    var characterNamesChoosenForPlayer1 : [String] = []
    var characterNamesChoosenForPlayer2 : [String] = []
    
    func playerCharacterChoice(playerIndex: Int) {
        
        if let playerName = readLine(){
            print("Bonjour \(playerName), nommez votre équipe:")
        }
        
        if let playerTeam = readLine(){
            print("Votre équipe se nomme: \(playerTeam).")
        }
        
        print("Choisissez vos personnages:")
        
        while numberOfCharacter < 3 {
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
                if let fighterPlayer = readLine() {
                    print("Votre combattant se nomme : \(fighterPlayer)")
                    if playerIndex == 1{
                        characterNamesChoosenForPlayer1.append(fighterPlayer)
                    }else if playerIndex == 2{
                        characterNamesChoosenForPlayer2.append(fighterPlayer)
                    }
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
                if let dwarfPlayer = readLine() {
                    print("Votre nain se nomme : \(dwarfPlayer)")
                    if playerIndex == 1{
                        characterNamesChoosenForPlayer1.append(dwarfPlayer)
                    } else if playerIndex == 2{
                        characterNamesChoosenForPlayer2.append(dwarfPlayer)
                    }
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
                if let colossusPlayer = readLine(){
                    print("Votre colosse se nomme : \(colossusPlayer)")
                    if playerIndex == 1{
                        characterNamesChoosenForPlayer1.append(colossusPlayer)
                    } else if playerIndex == 2{
                        characterNamesChoosenForPlayer2.append(colossusPlayer)
                    }
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
                if let magusPlayer = readLine(){
                    print("Votre mage se nomme : \(magusPlayer)")
                    if playerIndex == 1{
                        characterNamesChoosenForPlayer1.append(magusPlayer)
                    } else if playerIndex == 2{
                        characterNamesChoosenForPlayer2.append(magusPlayer)
                    }
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
            
        }
    }
}
