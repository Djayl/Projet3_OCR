// enumerations for the characters, whether they are opponents or assailants

enum Opponent {
    case dwarf, colossus, magus, fighter
}
enum Assailant {
    case dwarf, colossus, magus, fighter
}
enum Comrade {
    case dwarf, colossus, fighter
}

// Creation of the class Character

class Character{
    
    var characterLife = ["fighter": 100, "magus": 50, "colossus": 150, "dwarf": 50]
    var characterDamage = ["fighter": 10,"colossus": 5, "dwarf": 25]
    let magusCure = 10

// Creation of the attack function, one for all the characters    
    
func attack (parametre1: Opponent, parametre2: Assailant){
    
    if parametre1 == Opponent.magus && parametre2 == Assailant.fighter{
    (characterLife["magus"]!) -= (characterDamage["fighter"]!)
    print("Vous attaquez le mage")
    }
   
    if parametre1 == Opponent.colossus && parametre2 == Assailant.fighter{
    (characterLife["colossus"]!) -= (characterDamage["fighter"]!)
    print("Vous attaquez le colosse")
    }
   
    if parametre1 == Opponent.dwarf && parametre2 == Assailant.fighter{
    (characterLife["dwarf"]!) -= (characterDamage["fighter"]!)
    print("Vous attaquez le nain")
    }
    
    if parametre1 == Opponent.magus && parametre2 == Assailant.colossus{
            (characterLife["magus"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le mage")
    }
    if parametre1 == Opponent.dwarf && parametre2 == Assailant.colossus{
            (characterLife["fighter"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le combattant")
    }
    if parametre1 == Opponent.fighter && parametre2 == Assailant.colossus{
            (characterLife["dwarf"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le nain")
    }
    if parametre1 == Opponent.magus && parametre2 == Assailant.dwarf{
            (characterLife["magus"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le mage")
    }
    if parametre1 == Opponent.colossus && parametre2 == Assailant.dwarf{
            (characterLife["colossus"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le colosse")
    }
    if parametre1 == Opponent.fighter && parametre2 == Assailant.dwarf{
            (characterLife["fighter"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le combattant")
        }
}
    
// The magus heals his comrades

    func magusHealing (parametre: Comrade) {
        if parametre == Comrade.fighter && (characterLife["fighter"]!) > 0 {
            (characterLife["fighter"]!) += magusCure
            
        } else if parametre == Comrade.colossus && (characterLife["colossus"]!) > 0 {
            (characterLife["colossus"]!) += magusCure
            
        } else if parametre == Comrade.dwarf && (characterLife["dwarf"]!) > 0 {
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

