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
    var team1 : [Character] = []
    var team2 : [Character] = []
    var player1Name: [String] = []
    var player2Name: [String] = []
    var player1Team: [String] = []
    var player2Team: [String] = []
    var assailant: Character?
    var opponent: Character?
    var comrade: Character?
    
    // Each player chooses his characters which are strored in two respective arrays
    func playerCharacterChoice(playerIndex: Int) {
        var numberOfCharacter = 0
        // The following let is only used for the selection of the characters in the switch
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
                player1Team.append(playerTeam)
            } else if playerIndex == 2{
                player2Team.append(playerTeam)
            }
        }
        
        print("Choisissez vos personnages:"
            + "\n Le combattant est un excellent guerrier. Rapide et puissant, il est armé d'une épée qui fera perdre à votre adversaire 10 points de vie à chaque coup. Son niveau de vie de départ est de 100 points."
            
            + "\n Le Colosse est un guerrier légendaire. Imposant et très résistant, son niveau de vie de départ est de 150 points. Cependant, la massue dont il est armé n'infligera que 5 points de dégâts à votre adversaire."
            
            + "\n Le nain est un guerrier redoutable. Particulièrement puissant, sa hache est redoutée par tous. Elle ôtera 25 points de vie à votre adversaire. Son point faible? Sa faible résistance. En effet, il ne part qu'avec 50 points de vie."
            
            + "\n Le mage n'a rien d'un guerrier. Son talent: guérir ses camarades. Choisissez-le et vous pourrez redonner 10 points de vie à l'un des membres de votre équipe. Mais souvenez-vous! Il n'a rien d'un guerrier et son niveau de vie n'est que de 50 points.")
        
        // The loop works as long as three characters are not selected and it breaks when a name already exists in an array.
        repeat {
            
            for (index, value) in characterType.enumerated() {
                print("\(index + 1): \(value)")
            }
            // The player names his character
            if let character = readLine(){
                
                switch character {
                    
                case "1" : print("Vous avez choisis un \(CharacterType.Fighter.rawValue)")
                numberOfCharacter += 1
                
                print("Nommez votre \(CharacterType.Fighter.rawValue)")
                while let fighterPlayer = readLine() {
                    
                    if !team1.contains(where: {$0.name == fighterPlayer} ) && !team2.contains(where: {$0.name == fighterPlayer} ){
                        print("Votre \(CharacterType.Fighter.rawValue) se nomme : \(fighterPlayer)")
                        
                        if playerIndex == 1{
                            
                            team1.append(Character(name: fighterPlayer, type: .Fighter))
                            
                        }else if playerIndex == 2{
                            
                            team2.append(Character(name: fighterPlayer, type: .Fighter))
                            
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
                    
                    if !team1.contains(where: {$0.name == dwarfPlayer} ) && !team2.contains(where: {$0.name == dwarfPlayer} ){
                        print("Votre \(CharacterType.Dwarf.rawValue) se nomme : \(dwarfPlayer)")
                        
                        if playerIndex == 1{
                            
                            team1.append(Character(name: dwarfPlayer, type: .Dwarf))
                            
                        }else if playerIndex == 2{
                            
                            team2.append(Character(name: dwarfPlayer, type: .Dwarf))
                            
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
                    
                    if !team1.contains(where: {$0.name == colossusPlayer} ) && !team2.contains(where: {$0.name == colossusPlayer} ){
                        print("Votre \(CharacterType.Colossus.rawValue) se nomme : \(colossusPlayer)")
                        
                        if playerIndex == 1{
                            
                            team1.append(Character(name: colossusPlayer, type: .Colossus))
                            
                        }else if playerIndex == 2{
                            
                            team2.append(Character(name: colossusPlayer, type: .Colossus))
                            
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
                    
                    if !team1.contains(where: {$0.name == magusPlayer} ) && !team2.contains(where: {$0.name == magusPlayer} ){
                        print("Votre \(CharacterType.Magus.rawValue) se nomme : \(magusPlayer)")
                        
                        if playerIndex == 1{
                            
                            team1.append(Character(name: magusPlayer, type: .Magus))
                            
                        }else if playerIndex == 2{
                            
                            team2.append(Character(name: magusPlayer, type: .Magus))
                            
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
            // The name and the type of each character is announced
            if numberOfCharacter == 3 && playerIndex == 1{
                print("Votre équipe est constituée de:")
                for i in 0...[team1].count + 1{
                    print("\(team1[i].name) de type \(team1[i].type.rawValue)")
                }
            } else if numberOfCharacter == 3 && playerIndex == 2{
                print("Votre équipe est constituée de:")
                for i in 0...[team2].count + 1{
                    print("\(team2[i].name) de type \(team1[i].type.rawValue)")
                }
            }
            
        } while numberOfCharacter < 3
    }
    
    func random() {
        let randomNumber = Int(arc4random_uniform(2))
        if randomNumber == 1 {
            print("Félicitations \(String(describing: assailant?.name)), vous recevez le coffre de la gloire! Il contient l'arme de la destruction. Votre adversaire n'a aucune chance!")
            assailant?.weapon.damage += 30
        }
        
    }
    
    func input() -> Int {
        let strData = readLine();
        
        return Int(strData!)!
        
    }
    
    // The player chooses an assailant for the attack
    func chooseAssailant(in team: [Character])-> Character?{
        
        var assailant: Character?
        var validChoice = false
        repeat{
            print("Choisissez votre assaillant en tapant un chiffre:")
            for i in 0...[team].count + 1{
                if team[i].life > 0 {
                    print("\(i). \(team[i].name) de type \(team[i].type.rawValue). Points de vie: \(team[i].life). Points d'attaque: \(team[i].weapon.damage)")
                }
            }
            if let assailantChoice = readLine(){
                
                
                switch assailantChoice {
                case "0": assailant = team[0]
                validChoice = true
                    
                case "1":assailant = team[1]
                validChoice = true
                case "2":assailant = team[2]
                validChoice = true
                default: print("Entrez un chiffre valide")
                }
                
            }
        }while validChoice == false
        
        return assailant
        
    }
    
    // The player chooses an opponent to attack
    func chooseOpponent(in team: [Character])-> Character?{
        var validChoice = false
        var opponent: Character?
        
        repeat{
            print("Choisissez un opposant en tapant un chiffre:")
            for i in 0...[team].count + 1 {
                if team[i].life > 0 {
                    print("\(i). \(team[i].name) de type \(team[i].type.rawValue). Points de vie: \(team[i].life). Points d'attaque: \(team[i].weapon.damage)")
                }
            }
            
            if let opponentChoice = readLine(){
                
                switch opponentChoice{
                case "0":opponent = team[0]
                validChoice = true
                case "1":opponent = team[1]
                validChoice = true
                case "2":opponent = team[2]
                validChoice = true
                default: print("Entrez un chiffre valide")
                }
            }
        }while validChoice == false
        
        return opponent
    }
    
    func chooseComrade(in team: [Character])-> Character?{
        var validChoice = false
        var comrade: Character?
        repeat{
            print("Choisissez votre camarade à guérir en tapant un chiffre:")
            for i in 0...[team].count + 1{
                if team[i].life > 0{
                    
                    print("\(i+1). \(team[i].name) de type \(team[i].type.rawValue). Points de vie: \(team[i].life). Points d'attaque: \(team[i].weapon.damage)")
                }
            }
            
            if let comradeChoice = readLine() {
                
                switch comradeChoice {
                case "1": comrade = team[0]
                validChoice = true
                case "2": comrade = team[1]
                validChoice = true
                case "3": comrade = team[2]
                validChoice = true
                default: print("Entrez un chiffre valide")
                }
                
            }
            if comrade?.type == CharacterType.Magus{
                print("Choisis un autre perso")
            }
        } while validChoice == false && comrade?.type == CharacterType.Magus && (comrade?.life)! == 0
        
        return comrade
    }
    func play(playerIndex: Int){
        
        
        if playerIndex == 1{
            assailant = chooseAssailant(in: team1)
        }
        else {
            assailant = chooseAssailant(in: team2)
        }
        
        print("Vous avez choisis: \(String(describing: assailant?.name))")
        
        
        if playerIndex == 1 && assailant?.type != CharacterType.Magus {
            opponent = chooseOpponent(in: team2)
        }
        else if playerIndex == 2 && assailant?.type != CharacterType.Magus{
            opponent = chooseOpponent(in: team1)
        }
        print("Vous avez choisis: \(String(describing: opponent?.name))")
        
        if playerIndex == 1 && assailant?.type == CharacterType.Magus{
            comrade = chooseComrade(in: team1)
        } else if playerIndex == 2 && assailant?.type == CharacterType.Magus{
            comrade = chooseComrade(in: team2)
        }
        print("Vous avez choisis: \(String(describing: comrade?.name))")
        
    }
    
    func fight(playerIndex: Int){
        
        if assailant?.type != CharacterType.Magus {
            assailant?.attack(opponent: opponent!)
            
        }
        else {
            assailant?.Healing(comrade: comrade!)
        }
        
    }
    func dead(in team: [Character]){
        var i = 0
        var team = team
        for characters in team {
            if characters.life <= 0 {
                print("mon index est : \(i) et son nom est \(characters.name)")
                team.remove(at: i)
                print("\(characters.name) est mort")
            }
            i += 1
        }
    
    func runGame(playerIndex: Int){
        repeat {
            
            print("Joueur 1 à toi de jouer:")
            play(playerIndex: 1)
            fight(playerIndex: 1)
            
            
            print("Joueur 2 à toi de jouer:")
            play(playerIndex: 2)
            fight(playerIndex: 2)
            
            
            
            if team1[0].life == 0 && team1[1].life == 0 && team1[2].life == 0 {
                print(" \(player2Name) a gagné")
                
            }
                
            else if team2[0].life == 0 && team2[1].life == 0 && team2[2].life == 0 {
                print(" \(player1Name) a gagné")
                
            }
            break
        } while (team1[0].life > 0 || team1[1].life > 0 || team1[2].life > 0) && (team2[0].life > 0 || team2[1].life > 0 || team2[2].life > 0)
        
        
    }
    
    
}
}
