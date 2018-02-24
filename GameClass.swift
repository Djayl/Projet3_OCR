// The Game class contains the methods for selecting and naming characters

class Game {
    var numberOfCharacter = 0
    var characterType = ["Un Combattant", "Un Nain", "Un Colosse", "Un Mage"]
   
    var characterChoosenPlayerOne : [String] = []
    var characterChoosenPlayerTwo : [String] = []

// The first method for the first player

    func playerOneCharacterChoice() {
        
        print("Bonjour joueur 1, entrez votre nom")
        if let playerOneName = readLine(){
            print("Bonjour \(playerOneName)")
        }
        
        print("Choisissez vos personnages"
            + "\n1. Un nain"
            + "\n2. Un combattant"
            + "\n3. Un colosse"
            + "\n4. Un mage")
        
        while numberOfCharacter < 3 {
            
            
                if let character = readLine(){
                    
                    switch character {
                        
                    case "1": print("Vous avez choisis un nain")
                    numberOfCharacter += 1
                    characterChoosenPlayerOne.append(characterType[1])
                        print("Nommez votre nain")
                    if let dwarfPlayerOne = readLine() {
                        print("Votre nain se nomme : \(dwarfPlayerOne)")
                        }
            
                        
                    case "2": print("Vous avez choisis un combattant")
                    numberOfCharacter += 1
                    characterChoosenPlayerOne.append(characterType[0])
                        print("Nommez votre combattant")
                    if let fighterPlayerOne = readLine() {
                        print("Votre combattant se nomme : \(fighterPlayerOne)")
                        }
                  
                        
                    case "3": print("Vous avez choisis un colosse")
                    numberOfCharacter += 1
                    characterChoosenPlayerOne.append(characterType[2])
                        print("Nommez votre colosse")
                    if let colossusPlayerOne = readLine(){
                        print("Votre colosse se nomme : \(colossusPlayerOne)")
                        }
                   
                        
                    case "4": print("Vous avez choisis un mage")
                    numberOfCharacter += 1
                    characterChoosenPlayerOne.append(characterType[3])
                        print("Nommez votre mage")
                    if let magusPlayerOne = readLine(){
                        print("Votre mage se nomme : \(magusPlayerOne)")
                        }
                   
                        
                    default: print("Je ne comprends pas")
                        
                    }
                   }

// An array to summarize the choice of the characters of the first player

            if numberOfCharacter == 3{
                print("Vous avez choisis vos 3 personnages: \(characterChoosenPlayerOne)")
            }
            
        }
        
}

// The second method for the second player 

    func playerTwoCharacterChoice() {
        
        print("Bonjour joueur 2, entrez votre nom")
        if let playerTwoName = readLine(){
            print("Bonjour \(playerTwoName)")
        }
        
        print("Choisissez vos personnages"
            + "\n1. Un nain"
            + "\n2. Un combattant"
            + "\n3. Un colosse"
            + "\n4. Un mage")
        
        while numberOfCharacter < 3 {
            
            if let character = readLine(){
                
                switch character {
                    
                case "1": print("Vous avez choisis un nain")
                numberOfCharacter += 1
                characterChoosenPlayerTwo.append(characterType[1])
                print("Nommez votre nain")
                if let dwarfPlayerTwo = readLine() {
                    print("Votre nain se nomme : \(dwarfPlayerTwo)")
                    }
                    
                case "2": print("Vous avez choisis un combattant")
                numberOfCharacter += 1
                characterChoosenPlayerTwo.append(characterType[0])
                print("Nommez votre combattant")
                if let fighterPlayerTwo = readLine() {
                    print("Votre combattant se nomme : \(fighterPlayerTwo)")
                    }
                    
                case "3": print("Vous avez choisis un colosse")
                numberOfCharacter += 1
                characterChoosenPlayerTwo.append(characterType[2])
                print("Nommez votre colosse")
                if let colossusPlayerTwo = readLine(){
                    print("Votre colosse se nomme : \(colossusPlayerTwo)")
                    }
                    
                case "4": print("Vous avez choisis un mage")
                numberOfCharacter += 1
                characterChoosenPlayerTwo.append(characterType[3])
                print("Nommez votre mage")
                if let magusPlayerTwo = readLine(){
                    print("Votre mage se nomme : \(magusPlayerTwo)")
                    }
                    
                default: print("Je ne comprends pas")
                    
                }
            }
 // An array to summarize the choice of the characters of the second player
            
            if numberOfCharacter == 3{
                print("Vous avez choisis vos 3 personnages: \(characterChoosenPlayerTwo)")
            }
            
        }
        
        
    }
    
}

// The beginning of the first player game

var newGamePlayerOne = Game ()
newGamePlayerOne.playerOneCharacterChoice()

// The beginning of the second player game

var newGamePlayerTwo = Game ()
newGamePlayerTwo.playerTwoCharacterChoice()



