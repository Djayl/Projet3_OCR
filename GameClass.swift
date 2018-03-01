// The Game class contains the methods for selecting and naming characters

class Game {
    
    var numberOfCharacter = 0
    var characterType = ["Un Combattant", "Un Nain", "Un Colosse", "Un Mage"]
    
    var characterChoosenPlayer : [String] = []
    

// The method to choose and name the characters 

    func playerCharacterChoice(playerIndex: Int) {
        
        if let playerName = readLine(){
            print("Bonjour \(playerName)")
        }
        
        print("Choisissez vos personnages"
            + "\n1. \(characterType[0])"
            + "\n2. \(characterType[1])"
            + "\n3. \(characterType[2])"
            + "\n4. \(characterType[3])")
        
        while numberOfCharacter < 3 {
            
            
            if let character = readLine(){
                
                switch character {
                    
                case "1": print("Vous avez choisis \(characterType[0])")
                numberOfCharacter += 1
                characterType.remove(at: 0)
                characterChoosenPlayer.append(characterType[1])
                print("Nommez votre combattant")
                if let fighterPlayer = readLine() {
                    print("Votre combattant se nomme : \(fighterPlayer)")
                    }
             
                    
                case "2": print("Vous avez choisis \(characterType[1])")
                numberOfCharacter += 1
                characterChoosenPlayer.append(characterType[0])
                print("Nommez votre nain")
                if let dwarfPlayer = readLine() {
                    print("Votre combattant se nomme : \(dwarfPlayer)")
                    }
                    
                    
                case "3": print("Vous avez choisis \(characterType[2])")
                numberOfCharacter += 1
                characterChoosenPlayer.append(characterType[2])
                print("Nommez votre colosse")
                if let colossusPlayer = readLine(){
                    print("Votre colosse se nomme : \(colossusPlayer)")
                    }
                    
                    
                case "4": print("Vous avez choisis \(characterType[3])")
                numberOfCharacter += 1
                characterChoosenPlayer.append(characterType[3])
                print("Nommez votre mage")
                if let magusPlayer = readLine(){
                    print("Votre mage se nomme : \(magusPlayer)")
                    }
                    
                    
                default: print("Je ne comprends pas")
                    
                }
            }
            if numberOfCharacter == 3{
                print("Vous avez choisis vos 3 personnages: \(characterChoosenPlayer)")
            }
            if numberOfCharacter < 3{
                print("Choisissez un autre personnage")
            }
            
        }
        
    }
}


    

print("Bonjour joueur 1, entrez votre nom")
var playerOne = Game()
playerOne.playerCharacterChoice(playerIndex:1)


