//
//  Characters.swift
//  FightForGood
//
//  Created by d3rf on 02/08/2018.
//  Copyright © 2018 d3rf. All rights reserved.
//

import Foundation


class Characters {
    var playerName: String = "Anonymous"
    var playerType: String
    var playerWeapon: Weapon?
    var playerLife: Int = 0
    var playerTeam: String = "none"
    var teamMembership: String = "none"
    
    
    init(playerType: String) {
        
        self.playerType = playerType
        
                  
    
    }
}
