// Creation of the class Character
class Character{
    
    var fighterLife = 100
    var fighterDamage = 10
    
    var magusLife = 50
    var magusCure = 10
    
    var colossusLife = 120
    var colossusDamage = 5
    
    var dwarfLife = 50
    var dwarfDamage = 25
    
    func fighterAttackDwarf(){
        dwarfLife -= fighterDamage
        }
    func fighterAttackColossus(){
        colossusLife -= fighterDamage
    }
    func fighterAttackMagus(){
        magusLife -= fighterDamage
    }
    func colossusAttackFighter(){
        fighterLife -= colossusDamage
    }
    func colossusAttackDwarf(){
        dwarfLife -= colossusDamage
    }
    func colossusAttackMagus(){
        magusLife -= colossusDamage
    }
    func magusHealsFighter(){
        if fighterLife > 0{
            fighterLife += magusCure
        }
        else {
            print("il est mort, je ne peux pas le réanimer")
        }
    }
    func magusHealsDwarf(){
        if dwarfLife > 0{
            dwarfLife += magusCure
        }
        else {
            print("il est mort, je ne peux pas le réanimer")
        }
    }
    func magusHealsColossus(){
        if colossusLife > 0{
            colossusLife += magusCure
        }
        else {
            print ("il est mort, je ne peux pas le réanimer")
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

