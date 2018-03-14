// Enumeration for the type of the characters
enum CharacterType {
    case Dwarf, Colossus, Magus, Fighter
}

// Creation of the class Character

class Character {
    
    var cure: Int
    let type: CharacterType
    var damage: Int
    var life: Int
    
    init(type: CharacterType){
        self.type = type
        
        switch self.type {
        case .Fighter:
            self.life = 100
            self.damage = 10
            self.cure = 0
        case .Colossus:
            self.life = 150
            self.damage = 5
            self.cure = 0
        case .Dwarf:
            self.life = 50
            self.damage = 25
            self.cure = 0
        case .Magus:
            self.life = 50
            self.damage = 0
            self.cure = 10
        }
    }
    
// The character attacks an opponent
    
    func attack(opponent: Character){
        opponent.life -= damage
        print("\(type), vous attaquez le \(opponent.type).")
        print("\(opponent.type), vous perdez \(damage) points de vie.")
        print("Votre vie est de \(opponent.life) points.")
    }
    
// The Magus heals his comrades
    
    func Healing(comrade: Character) {
        if comrade.life > 0 && type == .Magus{
            comrade.life += cure
            print("Je vous guéris, votre vie est de \(comrade.life) points.")
        } else if comrade.life <= 0{
            print("Vous êtes mort, je ne peux pas vous réanimer.")
        }else if type != .Magus{
            print("Je ne suis pas un Mage, je ne peux rien pour vous.")
        }
    }
}
