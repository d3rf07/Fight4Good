//
//  weapons.swift
//  FightForGood
//
//  Created by d3rf on 19/10/2018.
//  Copyright © 2018 d3rf. All rights reserved.
//

import Foundation

class Weapon {
    
    var playerType: String
    
    var type: String
    var damage: Int
    var risk: Int
    var boost: Int

    init(playerType: String, type: String, damage: Int, risk: Int, boost: Int) {
        self.playerType = ""
        self.type = ""
        self.damage = 0
        self.risk = 0
        self.boost = 0
    }
    
    class Sword: Weapon {
        init() {
            super.init(
                playerType: constants.TYPE_FIGHTER,
                type: constants.WEAPON_FIGHTER_TYPE,
                damage: constants.WEAPON_FIGHTER_DAMAGE,
                risk: constants.WEAPON_FIGHTER_RISK,
                boost: constants.WEAPON_FIGHTER_BOOST
                )
            }
    }
    
    
    class Magic: Weapon {
        init() {
            super.init(
                playerType: constants.TYPE_MAGE,
                type: constants.WEAPON_MAGE_TYPE,
                damage: constants.WEAPON_MAGE_DAMAGE,
                risk: constants.WEAPON_MAGE_RISK,
                boost: constants.WEAPON_MAGE_BOOST
            )
        }
    }
    
    
    class Sledgehammer: Weapon {
        init() {
            super.init(
                playerType: constants.TYPE_COLOSSUS,
                type: constants.WEAPON_COLOSSUS_TYPE,
                damage: constants.WEAPON_COLOSSUS_DAMAGE,
                risk: constants.WEAPON_COLOSSUS_RISK,
                boost: constants.WEAPON_COLOSSUS_BOOST
            )
        }
    }
    
    
    class Axe: Weapon {
        init() {
            super.init(
                playerType: constants.TYPE_DWARF,
                type: constants.WEAPON_DWARF_TYPE,
                damage: constants.WEAPON_DWARF_DAMAGE,
                risk: constants.WEAPON_DWARF_RISK,
                boost: constants.WEAPON_DWARF_BOOST
            )
        }
    }
    
    class Fire: Weapon {
        init() {
            super.init(
                playerType: constants.TYPE_DRAGON,
                type: constants.WEAPON_DRAGON_TYPE,
                damage: constants.WEAPON_DRAGON_DAMAGE,
                risk: constants.WEAPON_DRAGON_RISK,
                boost: constants.WEAPON_DRAGON_BOOST
            )
        }
    }
    
    // Le reste est a supprimer 
    func extractedFunc() {
        
        switch self.playerType {
            
        case "Fighter" :
            self.type = "Sword"
            self.damage = 10
            self.risk = 0
            self.boost = 0
            
        case "Mage" :
            self.type = "Magic"
            self.damage = -8
            self.risk = 0
            self.boost = 0
            
        case "Colossus" :
            self.type = "Sledgehammer"
            self.damage = 5
            self.risk = 0
            self.boost = 0
            
        case "Dwarf" :
            self.type = "Axe"
            self.damage = 20
            self.risk = 0
            self.boost = 0
            
        case "Dragon" :
            self.type = "Fire"
            self.damage = 100
            self.risk = 0
            self.boost = 0
            
        default:
            break
        }
    }
}


//class Weapon { HERITAGE  )
//    var weaponName: String
//    var damage: Int
//    var healing: Int
//
//    init(weaponName: String, damage: Int, healing: Int) {
//        self.weaponName = weaponName
//        self.damage = damage
//        self.healing = healing
//    }
//}
//
//class Sword: Weapon {
//    init() {
//        super.init(weaponName: constants.FIGHTER_WEAPON, damage: constants.FIGHTER_DAMAGE, healing: constants.FIGHTER_HEALING)
//    }
//}
//
//class Mace: Weapon {
//    init() {
//        super.init(weaponName: constants.COLOSSUS_WEAPON, damage: constants.COLOSSUS_DAMAGE, healing: constants.COLOSSUS_HEALING)
//    }
//}
//
//class Axe: Weapon {
//    init() {
//        super.init(weaponName: constants.DWARF_WEAPON, damage: constants.DWARF_DAMAGE, healing: constants.DWARF_HEALING)
//    }
//}
//
//class Sceptre: Weapon {
//    init() {
//        super.init(weaponName: constants.MAGUS_WEAPON, damage: constants.MAGUS_DAMAGE, healing: constants.MAGUS_HEALING)
//    }
//}
//
//class Spear: Weapon {
//    init() {
//        super.init(weaponName: "Lance", damage: constants.DEFAULT_DAMAGE, healing: 0)
//    }
//}
//
//class MagicPotion: Weapon {
//    init() {
//        super.init(weaponName: "Potion Magique", damage: 0, healing: constants.DEFAULT_HEALING)
//    }
//}
