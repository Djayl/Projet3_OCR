// Enumeration for the characters, whether they are opponents or assailants

enum CharacterType {
    case dwarf, colossus, magus, fighter
}

// Creation of the class Character

class Character{
    
    var characterLife = ["fighter": 100, "magus": 50, "colossus": 150, "dwarf": 50]
    var characterDamage = ["fighter": 10,"colossus": 5, "dwarf": 25]
    let magusCure = 10
    
// Creation of the attack function, one for all the characters
    
    func attack (opponent: CharacterType, assailant: CharacterType){
        
        if assailant == .fighter && opponent == .magus{
            (characterLife["magus"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le mage")
        }   else if assailant == .fighter && opponent == .colossus {
            (characterLife["colossus"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le colosse")
        }   else if assailant == .fighter && opponent == .dwarf{
            (characterLife["dwarf"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le nain")
        }
        
        if assailant == .colossus && opponent == .magus{
            (characterLife["magus"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le mage")
        }   else if assailant == .colossus && opponent == .fighter{
            (characterLife["fighter"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le combattant")
        }   else if assailant == .colossus && opponent == .dwarf{
            (characterLife["dwarf"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le nain")
        }
        
        if assailant == .dwarf && opponent == .magus{
            (characterLife["magus"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le mage")
        }   else if assailant == .dwarf && opponent == .colossus{
            (characterLife["colossus"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le colosse")
        }   else if assailant == .dwarf && opponent == .fighter{
            (characterLife["fighter"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le combattant")
        }
    }
    
// The magus heals his comrades
    
    func magusHealing (comrade: CharacterType) {
        if comrade == .fighter && (characterLife["fighter"]!) > 0 {
            (characterLife["fighter"]!) += magusCure
        } else if comrade == .colossus && (characterLife["colossus"]!) > 0 {
            (characterLife["colossus"]!) += magusCure
        } else if comrade == .dwarf && (characterLife["dwarf"]!) > 0 {
            (characterLife["dwarf"]!) += magusCure
        } else {
            print("Il est mort je ne peux pas le réanimer")
        }
    }
}

var anAttack = Character()
anAttack.attack(opponent: .colossus, assailant: .fighter)
anAttack.attack(opponent: .colossus, assailant: .dwarf)
