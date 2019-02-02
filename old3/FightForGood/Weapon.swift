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
    
    var type: String = ""
    var damage: Int = 0
    var risk: Int = 0
    var boost: Int = 0
    

    
    init(playerType: String) {
        
        self.playerType = playerType
        
    }
    
    func extractedFunc() {
        
        print("zzzzzzz : \(self.playerType)")
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
