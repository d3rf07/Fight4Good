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
    var playerLife: Int = 0 //vie résiduelle
    var playerTeam: String = ""
    var teamMembership: String = ""
    var playerIsAlive: Bool = true
    //var playerAlive: Bool inutile
    
    
    init() {
    
        //
        
    }

    
//    func getInfos() {
//        print("")
//        print("========== CARACTERS.GET INFOS ========================")
//        print("playerName : \(playerName)")
//        print("playerType : \(playerType)")
//        print("playerWeapon.type : \(self.playerWeapon.type)")
//        print("playerWeapon.damage : \(self.playerWeapon.damage)")
//        print("playerLife : \(playerLife)")
//        print("playerTeam : \(playerTeam)")
//        print("teamMembership : \(teamMembership)")
//        print("=======================================================")
//        print("")
//    }
    
    func healing(currentTeam: Team) {
        
        print("You selected \(currentTeam.giver.playerName), the mage.")
        
        if currentTeam.members[0].playerIsAlive {
            print (" 1 - Player Name : \(currentTeam.members[0].playerName)      Player Type \(currentTeam.members[0].playerType)     Player Life \(currentTeam.members[0].playerLife)")
        } else { print("\(currentTeam.members[0].playerName) is dead.") }
        
        if currentTeam.members[1].playerIsAlive {
            print (" 2 - Player Name : \(currentTeam.members[1].playerName)      Player Type \(currentTeam.members[1].playerType)     Player Life \(currentTeam.members[1].playerLife)")
        } else { print("\(currentTeam.members[1].playerName) is dead.") }
        
        if currentTeam.members[2].playerIsAlive {
            print (" 3 - Player Name : \(currentTeam.members[2].playerName)      Player Type \(currentTeam.members[2].playerType)     Player Life \(currentTeam.members[2].playerLife)")
        } else { print("\(currentTeam.members[2].playerName) is dead.") }
        
//
        print("\(currentTeam.name),  Who you want to heal ?")
        
        
        let input = readLine()
        
        switch input {
            
        case "1" :
            currentTeam.receiver = currentTeam.members[0]
        case "2" :
            currentTeam.receiver = currentTeam.members[1]
        case "3" :
            currentTeam.receiver = currentTeam.members[2]
        default :
            print("\(currentTeam.name), Who you want to heal ?")
        }
        
//            switch (currentTeam.receiver.playerType) {
//
//            case TYPE_FIGHTER :
//
//            case TYPE_MAGE:
//
//            case TYPE_COLOSSUS :
//
//            case TYPE_DWARF :
//
//            case TYPE_DRAGON :
//                    print("Sorry, this player is healthy enough, nothing will happen")
//            } // switch (currentTeam.receiver.playerType)

        
        
    } // func healing(currentTeam: Team) {
    
    
    func realAttack(currentTeam: Team, opponentTeam: Team) {
        
        print("\(currentTeam.giver.playerName) will fight !")
        
        if opponentTeam.members[0].playerIsAlive {
        print (" 1 - Player Name : \(opponentTeam.members[0].playerName)      Player Type \(opponentTeam.members[0].playerType)     Player Life \(opponentTeam.members[0].playerLife)")
        } else { print("\(opponentTeam.members[0].playerName) is dead.") }
        
        if opponentTeam.members[1].playerIsAlive {
            print (" 2 - Player Name : \(opponentTeam.members[1].playerName)      Player Type \(opponentTeam.members[1].playerType)     Player Life \(opponentTeam.members[1].playerLife)")
        } else { print("\(opponentTeam.members[1].playerName) is dead.") }
        
        if opponentTeam.members[2].playerIsAlive {
            print (" 3 - Player Name : \(opponentTeam.members[2].playerName)      Player Type \(opponentTeam.members[2].playerType)     Player Life \(opponentTeam.members[2].playerLife)")
        } else { print("\(opponentTeam.members[2].playerName) is dead.") }
        
//        print("2 - Player Name : \(opponentTeam.members[1].playerName)      Player Type \(opponentTeam.members[1].playerType)     Player Life \(opponentTeam.members[1].playerLife)\n")
//        print("3 - Player Name : \(opponentTeam.members[2].playerName)      Player Type \(opponentTeam.members[2].playerType)     Player Life \(opponentTeam.members[2].playerLife)\n")
        
        print("\(currentTeam.name), select your target")
        
        let input = readLine()
        
        switch input {
            
        case "1" :
            opponentTeam.receiver = opponentTeam.members[0]
        case "2" :
            opponentTeam.receiver = opponentTeam.members[1]
        case "3" :
            opponentTeam.receiver = opponentTeam.members[2]
        default :
            print("\(currentTeam.name), select your target")
            
        }
        if opponentTeam.receiver.playerIsAlive {
        print("\(currentTeam.giver.playerName) will fight \(opponentTeam.receiver.playerName)")
        } else {
        print("You can't kill the dead")
  /////// Ac ontinuer
        }
        
        print("You will hit with a power of : \(currentTeam.giver.playerWeapon!.damage)")
        
        //combat effectif
        opponentTeam.receiver.playerLife = opponentTeam.receiver.playerLife - currentTeam.giver.playerWeapon!.damage
        
        //Test is player is still alive
        
        if (opponentTeam.receiver.playerLife < 1) { opponentTeam.receiver.playerIsAlive = false } else {opponentTeam.receiver.playerIsAlive = true}
        
        
        if (opponentTeam.receiver.playerIsAlive) {
            print("Life of \(opponentTeam.receiver.playerName) is now \(opponentTeam.receiver.playerLife).")
            
        } else {
            print("\(opponentTeam.receiver.playerName) is dead.")
        }
        
//        isAlive(opponentTeam: opponentTeam)
        
    } // end of : func realAttack()
    
//    func isAlive(opponentTeam: Team) {
        
        


//    }
    
    
} //end of : classe



// MARK: extension Characters
extension Characters {
    
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

} //end of : extension Characters {

