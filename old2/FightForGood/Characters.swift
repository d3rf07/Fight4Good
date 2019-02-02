//
//  Characters.swift
//  FightForGood
//
//  Created by d3rf on 02/08/2018.
//  Copyright © 2018 d3rf. All rights reserved.
//

import Foundation


class Characters {
    var playerName: String = ""
    var playerType: String = ""
    var playerWeapon: Weapon?
    var playerLife: Int = 0
    var playerTeam: String = ""
    var teamMembership: String = ""
    
    
    init(playerType: String) {
        
        self.playerType = playerType
        
                  
    
    }
}
