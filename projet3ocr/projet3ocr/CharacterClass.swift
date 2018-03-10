// Enumeration for the type of characters
enum CharacterType {
    case dwarf, colossus, magus, fighter
}

// Creation of the class Character

class Character{
    
    var fighterLife = 100
    var fighterDamage = 10
    var magusLife = 50
    let magusCure = 10
    var colossusLife = 150
    var colossusDamage = 5
    var dwarfLife = 50
    var dwarfDamage = 25
    
// Creation of the attack function, one for all the characters
    
    func attack (opponent: CharacterType){
        
        if opponent == .magus{
            magusLife -= fighterDamage
            print("Vous attaquez le mage")
        }   else if opponent == .colossus {
            colossusLife -= fighterDamage
            print("Vous attaquez le colosse")
        }   else if opponent == .dwarf{
            dwarfLife -= fighterDamage
            print("Vous attaquez le nain")
        }
        
    }
    
// The magus heals his comrades
    
    func magusHealing (comrade: CharacterType) {
        if comrade == .fighter && fighterLife > 0 {
            fighterLife += magusCure
        } else if comrade == .colossus && colossusLife > 0 {
            colossusLife += magusCure
        } else if comrade == .dwarf && dwarfLife > 0 {
            dwarfLife += magusCure
        } else {
            print("Il est mort je ne peux pas le réanimer")
        }
    }
}



