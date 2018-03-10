// The Game class contains the methods for selecting and naming characters

class Game {
    
    var numberOfCharacter = 0
    var characterType = ["combattant", "nain", "colosse", "mage"]
    
    var characterChoosenPlayer1 : [String] = []
    var characterChoosenPlayer2 : [String] = []
    var characterNamePlayer1 : [String] = []
    var characterNamePlayer2 : [String] = []
    
// The method to choose and name the characters

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
                    characterChoosenPlayer1.append(characterType[0])
                }else if playerIndex == 2{
                    characterChoosenPlayer2.append(characterType[0])
                }
                print("Nommez votre \(characterType[0])")
                if let fighterPlayer = readLine() {
                    print("Votre combattant se nomme : \(fighterPlayer)")
                    if playerIndex == 1{
                        characterNamePlayer1.append(fighterPlayer)
                    }else if playerIndex == 2{
                        characterNamePlayer2.append(fighterPlayer)
                    }
                }
                characterType.remove(at: 0)
                    
                case "2": print("Vous avez choisis un \(characterType[1])")
                numberOfCharacter += 1
                if playerIndex == 1{
                    characterChoosenPlayer1.append(characterType[1])
                } else if playerIndex == 2{
                    characterChoosenPlayer2.append(characterType[1])
                }
                print("Nommez votre \(characterType[1])")
                if let dwarfPlayer = readLine() {
                    print("Votre nain se nomme : \(dwarfPlayer)")
                    if playerIndex == 1{
                        characterNamePlayer1.append(dwarfPlayer)
                    } else if playerIndex == 2{
                        characterNamePlayer2.append(dwarfPlayer)
                    }
                }
                characterType.remove(at: 1)
                    
                case "3": print("Vous avez choisis un \(characterType[2])")
                numberOfCharacter += 1
                if playerIndex == 1{
                    characterChoosenPlayer1.append(characterType[2])
                } else if playerIndex == 2{
                    characterChoosenPlayer2.append(characterType[2])
                }
                print("Nommez votre \(characterType[2])")
                if let colossusPlayer = readLine(){
                    print("Votre colosse se nomme : \(colossusPlayer)")
                    if playerIndex == 1{
                        characterNamePlayer1.append(colossusPlayer)
                    } else if playerIndex == 2{
                        characterNamePlayer2.append(colossusPlayer)
                    }
                }
                characterType.remove(at: 2)
                    
                case "4": print("Vous avez choisis un \(characterType[3])")
                numberOfCharacter += 1
                if playerIndex == 1{
                    characterChoosenPlayer1.append(characterType[3])
                } else if playerIndex == 2{
                    characterChoosenPlayer2.append(characterType[3])
                }
                print("Nommez votre \(characterType[3])")
                if let magusPlayer = readLine(){
                    print("Votre mage se nomme : \(magusPlayer)")
                    if playerIndex == 1{
                        characterNamePlayer1.append(magusPlayer)
                    } else if playerIndex == 2{
                        characterNamePlayer2.append(magusPlayer)
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
                print("Vous avez choisis vos 3 personnages: \(characterChoosenPlayer1), ils se nomment: \(characterNamePlayer1).")
            } else if numberOfCharacter == 3 && playerIndex == 2{
                print("Vous avez choisis vos 3 personnages: \(characterChoosenPlayer2), ils se nomment: \(characterNamePlayer2).")
            }
            
        }
    }
}









