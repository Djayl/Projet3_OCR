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
    
    
    func attack (parametre1: CharacterType, parametre2: CharacterType){
        
        if parametre1 == CharacterType.magus && parametre2 == CharacterType.fighter{
            (characterLife["magus"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le mage")
        }
        
        if parametre1 == CharacterType.colossus && parametre2 == CharacterType.fighter{
            (characterLife["colossus"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le colosse")
        }
        
        if parametre1 == CharacterType.dwarf && parametre2 == CharacterType.fighter{
            (characterLife["dwarf"]!) -= (characterDamage["fighter"]!)
            print("Vous attaquez le nain")
        }
        
        if parametre1 == CharacterType.magus && parametre2 == CharacterType.colossus{
            (characterLife["magus"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le mage")
        }
        if parametre1 == CharacterType.dwarf && parametre2 == CharacterType.colossus{
            (characterLife["fighter"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le combattant")
        }
        if parametre1 == CharacterType.fighter && parametre2 == CharacterType.colossus{
            (characterLife["dwarf"]!) -= (characterDamage["colossus"]!)
            print("Vous attaquez le nain")
        }
        if parametre1 == CharacterType.magus && parametre2 == CharacterType.dwarf{
            (characterLife["magus"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le mage")
        }
        if parametre1 == CharacterType.colossus && parametre2 == CharacterType.dwarf{
            (characterLife["colossus"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le colosse")
        }
        if parametre1 == CharacterType.fighter && parametre2 == CharacterType.dwarf{
            (characterLife["fighter"]!) -= (characterDamage["dwarf"]!)
            print("Vous attaquez le combattant")
        }
    }
    
// The magus heals his comrades

    func magusHealing (parametre: CharacterType) {
        if parametre == CharacterType.fighter && (characterLife["fighter"]!) > 0 {
            (characterLife["fighter"]!) += magusCure
            
        } else if parametre == CharacterType.colossus && (characterLife["colossus"]!) > 0 {
            (characterLife["colossus"]!) += magusCure
            
        } else if parametre == CharacterType.dwarf && (characterLife["dwarf"]!) > 0 {
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

