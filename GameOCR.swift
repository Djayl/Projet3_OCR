// Creation of the class Character
class Character{
    var fighterName: String
    var magusName: String
    var colossusName: String
    var dwarfName: String
    
    
    let numberOfCharacter = 3
    
    init(fighterName: String, magusName: String, colossusName: String, dwarfName: String) {
        self.fighterName = fighterName
        self.magusName = magusName
        self.colossusName = colossusName
        self.dwarfName = dwarfName
    }
    
}

// Creation of the class Fighter, the class of the character named Fighter
class Fighter : Character{
    var fighterLife = 100
    var fighterDamage = -10
    
}

// Creation of the class Magus, the class of the character named Magus
class Magus : Character{
    var magusLife = 50
    var magusCure = +10
}

// Creation of the class Colossus, the class of the character named Colossus
class Colossus : Character{
    var colossusLife = 120
    var colossusDamage = -5
}

// Creation of the class Dwarf, the class of the character named Dwarf
class Dwarf : Character{
    var dwarfLife = 50
    var dwarfDamage = -25
}
