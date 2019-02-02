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
    var playerWeapon: Weapon!
    var playerLife: Int = 0
    var playerTeam: String = ""
    var teamMembership: String = ""
    
    
    init() {
    
        //
        
    }
    
    
    
    
    func getInfos() {
        print("")
        print("========== CARACTERS.GET INFOS ========================")
        print("playerName : \(playerName)")
        print("playerType : \(playerType)")
        print("playerWeapon.type : \(self.playerWeapon.type)")
        print("playerWeapon.damage : \(self.playerWeapon.damage)")
        print("playerLife : \(playerLife)")
        print("playerTeam : \(playerTeam)")
        print("teamMembership : \(teamMembership)")
        print("=======================================================")
        print("")
        
        
    }
    
}
