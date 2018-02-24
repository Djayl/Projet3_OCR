// Creation of the class Character

class Character{
    
    var characterLife = ["fighter": 100, "magus": 50, "colossus": 150, "dwarf": 50]
    var characterDamage = ["fighter": 10,"colossus": 5, "dwarf": 25]
    let magusCure = 10
    var comrade = ["Combattant", "Colosse", "Nain"]
    var opponent : String
    init (opponent: String){
        self.opponent = opponent
    }
    
    
    
// The fighter attacks his opponents
    
    func fighterAttack(){
        if opponent == "Mage"{
            (characterLife["magus"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le mage")
        } else if opponent == "Colosse"{
            (characterLife["colossus"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le colosse")
        } else if opponent == "Nain"{
            (characterLife["dwarf"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le nain")
        } else {
            print("Vous n'avez pas choisis d'adversaire")
        }
    }
// The colossus attacks his opponents
    
    func colossusAttack() {
        if opponent == "Mage"{
            (characterLife["magus"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le mage")
        } else if opponent == "Combattant"{
            (characterLife["fighter"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le combattant")
        } else if opponent == "Nain"{
            (characterLife["dwarf"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le nain")
        } else {
            print("Vous n'avez pas choisis d'adversaire")
        }
        
    }
// The Dwarf attacks his opponents
    
    func dwarfAttack() {
        if opponent == "Mage"{
            (characterLife["magus"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le mage")
        } else if opponent == "Colosse"{
            (characterLife["colossus"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le colosse")
        } else if opponent == "Combattant"{
            (characterLife["fighter"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le combattant")
        } else {
            print("Vous n'avez pas choisis d'adversaire")
        }
        
    }
    
// The magus heals his comrades
    func magusHealing () {
        if comrade == ["Combattant"] && (characterLife["fighter"]!) > 0 {
            (characterLife["fighter"]!) += magusCure
            
        } else if comrade == ["Colosse"] && (characterLife["colossus"]!) > 0 {
            (characterLife["colossus"]!) += magusCure
            
        } else if comrade == ["Nain"] && (characterLife["dwarf"]!) > 0 {
            (characterLife["dwarf"]!) += magusCure
            
        } else {
            print("Il est mort je ne peux pas le réanimer")
        }
        
    }

}

// Creation of the class Fighter, the class of the character named Fighter
class Fighter: Character{
    var fighterName: String
    init (fighterName: String) {
        self.fighterName = fighterName
    }
}

// Creation of the class Magus, the class of the character named Magus
class Magus: Character{
    var magusName: String
    init (magusName: String){
        self.magusName = magusName
    }
    
}

// Creation of the class Colossus, the class of the character named Colossus
class Colossus: Character{
    var colossusName: String
    init (colossusName: String){
        self.colossusName = colossusName
    }
    
}

// Creation of the class Dwarf, the class of the character named Dwarf
class Dwarf: Character{
    var dwarfName: String
    init (dwarfName: String){
        self.dwarfName = dwarfName
    }
    
}

