//
//  weapons.swift
//  FightForGood
//
//  Created by d3rf on 19/10/2018.
//  Copyright © 2018 d3rf. All rights reserved.
//

import Foundation

class Weapon {
    
    var type: String
    var damage: Int
    var risk: Int
    var boost: Int

    init(type: String, damage: Int, risk: Int, boost: Int) {
        self.type = type
        self.damage = damage
        self.risk = risk
        self.boost = boost
    }

    
//    // Le reste est a supprimer
//    func extractedFunc() {
//
//        switch self.playerType {
//
//        case "Fighter" :
//            self.type = "Sword"
//            self.damage = 10
//            self.risk = 0
//            self.boost = 0
//            
//        case "Mage" :
//            self.type = "Magic"
//            self.damage = -8
//            self.risk = 0
//            self.boost = 0
//
//        case "Colossus" :
//            self.type = "Sledgehammer"
//            self.damage = 5
//            self.risk = 0
//            self.boost = 0
//            
//        case "Dwarf" :
//            self.type = "Axe"
//            self.damage = 20
//            self.risk = 0
//            self.boost = 0
//
//        case "Dragon" :
//            self.type = "Fire"
//            self.damage = 100
//            self.risk = 0
//            self.boost = 0
//
//        default:
//            break
//        }
//    }
    
} // end of : class Weapon


class Sword: Weapon {
    init() {
        super.init(
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
            type: constants.WEAPON_DRAGON_TYPE,
            damage: constants.WEAPON_DRAGON_DAMAGE,
            risk: constants.WEAPON_DRAGON_RISK,
            boost: constants.WEAPON_DRAGON_BOOST
        )
    }
}
