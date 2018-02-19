class NewGame {
var numberOfCharacter = 0
var characterType = ["Un Combattant", "Un Nain", "Un Colosse", "Un Mage"]

var monTableauVide: [String] = []

func chooseCharacter() {
    print("Bonjour joueur 1, entrez votre nom")
    if let player1Name = readLine(){
        print("Bonjour \(player1Name)")
    }

print("Choisis tes personnages"
    + "\n1. Un nain"
    + "\n2. Un combattant"
    + "\n3. Un colosse"
    + "\n4. Un mage")
while numberOfCharacter < 3{
for _ in 1...3{
    
if let character = readLine(){

    switch character {
        
    case "1": print("tu as choisis un nain")
        numberOfCharacter += 1
    monTableauVide.append("nain")
        
    case "2": print("tu as choisis un combattant")
        numberOfCharacter += 1
    monTableauVide.append("combattant")
        
    case "3": print("tu as choisis un colosse")
        numberOfCharacter += 1
    monTableauVide.append("colosse")
        
    case "4": print("tu as choisis un mage")
        numberOfCharacter += 1
    monTableauVide.append("mage")
        
    default: print("je ne comprends pas")
    
    }
    }
    }
}
    if numberOfCharacter == 3{
    print("Tu as choisis tes 3 personnages: \(monTableauVide)")
    }
}
}

var aNewGame1 = NewGame()
aNewGame1.chooseCharacter()



