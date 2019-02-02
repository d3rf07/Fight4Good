//
//  Game.swift
//  FightForGood
//
//  Created by d3rf on 09/08/2018.
//  Copyright © 2018 d3rf. All rights reserved.
//

import Foundation

class Game {

    
    
    //Quick set of genral Var
    let emptyLine = " \n"

//    //SplashScreen + Welcome


    func intro() {
        let preLogo1 = "                                             Welcome To\n"
        let emptyLine = " \n"
        let logoL0 = "@@@@@@@@  @@@   @@@@@@@@  @@@  @@@  @@@@@@@       @@@    @@@@@@@@   @@@@@@    @@@@@@   @@@@@@@"
        let logoL1 = "@@@@@@@@  @@@  @@@@@@@@@  @@@  @@@  @@@@@@@      @@@@   @@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@@"
        let logoL2 = "@@!       @@!  !@@        @@!  @@@    @@!       @@!@!   !@@        @@!  @@@  @@!  @@@  @@!  @@@"
        let logoL3 = "!@!       !@!  !@!        !@!  @!@    !@!      !@!!@!   !@!        !@!  @!@  !@!  @!@  !@!  @!@"
        let logoL4 = "@!!!:!    !!@  !@! @!@!@  @!@!@!@!    @!!     @!! @!!   !@! @!@!@  @!@  !@!  @!@  !@!  @!@  !@!"
        let logoL5 = "!!!!!:    !!!  !!! !!@!!  !!!@!!!!    !!!    !!!  !@!   !!! !!@!!  !@!  !!!  !@!  !!!  !@!  !!!"
        let logoL6 = "!!:       !!:  :!!   !!:  !!:  !!!    !!:    :!!:!:!!:  :!!   !!:  !!:  !!!  !!:  !!!  !!:  !!!"
        let logoL7 = ":!:       :!:  :!:   !::  :!:  !:!    :!:    !:::!!:::  :!:   !::  :!:  !:!  :!:  !:!  :!:  !:!"
        let logoL8 = " ::        ::   ::: ::::  ::   :::     ::         :::    ::: ::::  ::::: ::  ::::: ::   :::: ::"
        let logoL9 = " :        :     :: :: :    :   : :     :          :::    :: :: :    : :  :    : :  :   :: :  : "
        let pressAnyKey = "                                      Press S To Start\n                                   Or Q To Quit And Enter\n"
        
        
    //let logo = logoL0 + logoL1 + logoL2 + logoL3 + logoL4 + logoL5 + logoL6 + logoL7 + logoL8 + logoL9 (just in case I need it for the end screen)
        
        //let logoIntro = preLogo1 + emptyLine + emptyLine + logoL0 + logoL1 + logoL2 + logoL3 + logoL4 + logoL5 + logoL6 + logoL7 + logoL8 + logoL9 +  emptyLine + emptyLine + pressAnyKey
        

        func displayLogo(toPrint: String)  {
                print(toPrint)
                usleep(200000)
                
            }
        
           
            
        displayLogo(toPrint: preLogo1)
        displayLogo(toPrint: emptyLine)
        displayLogo(toPrint: logoL0)
        displayLogo(toPrint: logoL1)
        displayLogo(toPrint: logoL2)
        displayLogo(toPrint: logoL3)
        displayLogo(toPrint: logoL4)
        displayLogo(toPrint: logoL5)
        displayLogo(toPrint: logoL6)
        displayLogo(toPrint: logoL7)
        displayLogo(toPrint: logoL8)
        displayLogo(toPrint: logoL9)
        displayLogo(toPrint: emptyLine)
        displayLogo(toPrint: pressAnyKey)
        
            
        } // end of func intro
    


        
        
   

    // Start or Quit Choice

    func playOrNot() {
        
        var startOrQuit = readLine()
        
        if (startOrQuit == "s" || startOrQuit == "S")  {
            print("Let's Start")
        }
        else if (startOrQuit == "q" || startOrQuit == "Q") {
            print("Goodbye, See You Soon")
            exit(0)
        }
        else {
            print("You need an alphabet training, S to start or Q to quit")
            startOrQuit = readLine()
        }
        

    }

    //Choose then number of player

    func numberOfPlayers() {
    print("This is a 2 players game, so it's more entertaining if your find two players\n")
    print(emptyLine)
    }


    // Choose the name of the team



    func teamNameChoice(playerName: String) -> String  {
        var inputOK: Bool = false
        var returnValue = ""
        print("\(playerName) choose your team name : ", terminator: "")
        repeat {
            if let keyboardInput = readLine() {
                if keyboardInput.isEmpty {
                    inputOK = false
                    print("Team name is mandatory, please \(playerName) choose your team name !")
                    print("")
                } else {
                    inputOK = true
                    returnValue = keyboardInput
                } // end of : if keyboardInput.isEmpty
            } // end of : if let keyboardInput = readLine()
        }  while !inputOK  // end of : repeat
        return returnValue
    } // end of : func teamNameChoice(playerNumber:String)
    

    
    //Select team memeber

    func teamMembersSelection(rank: String) -> Characters {
        
        let currentCharacter = Characters()
        
    
        print("Now you will have to select the \(rank) characters from the 4 existing types\n")
        
        print(" 1 - Fighter: The classic attacker. A good warrior! \n" +
              " 2 - Mage: His talent? Treat his team members. \n" +
              " 3 - Colossus: Imposing and very resistant, but it won't hurt you very much \n" +
              " 4 - Dwarf: His axe will do you a lot of damage, but he doesn't have many health points.")
        
        print("")
        print("Select your \(rank) character's type : ", terminator: "")
        
        var input = readLine()
        
        while input!.isEmpty {
            print("")
            print("Please, select your \(rank) character's type")
            input = readLine()
        }


        
        switch input {
        case "1" :
            currentCharacter.playerType = "Fighter"
            currentCharacter.playerWeapon = Sword()
        case "2" :
            currentCharacter.playerType = "Mage"
            currentCharacter.playerWeapon = Magic()
        case "3" :
            currentCharacter.playerType = "Colossus"
            currentCharacter.playerWeapon = Sledgehammer()
        case "4" :
            currentCharacter.playerType = "Dwarf"
            currentCharacter.playerWeapon = Axe()
        default :
            print("\n Please, select your character's type")
            input = readLine()
            
        }
        
        
        //affectation du nom
        print("")
        print(  "Ok now choose your \(rank) character name : ", terminator: "")
        
        input = readLine()
        
        while input!.isEmpty {
            print("Anonymous players are not allowed, please, choose your player name. \n")
            input = readLine()
        }
        currentCharacter.playerName = input!
        


        // autres infos
        
        switch currentCharacter.playerType {

        case "Fighter" :
            currentCharacter.playerLife = constants.LIFE_FIGHTER
        case "Mage" :
            currentCharacter.playerLife = constants.LIFE_MAGE
        case "Colossus" :
            currentCharacter.playerLife = constants.LIFE_COLOSSUS
        case "Dwarf" :
            currentCharacter.playerLife = constants.LIFE_DWARF
        case "Dragon" :
            currentCharacter.playerLife = constants.LIFE_DRAGON
            
        default:
            break
        }
        
        currentCharacter.getInfos()
        
        return currentCharacter
        
    } //End Of func teamMembersSelection



//   func summary () {
//
//
//    print("Team name : \(team1.name!)\t  Player Name : \(team1.member1!.playerName)\t      Player Type \(team1.member1!.playerType)     Player Life \(team1.member1!.playerLife)    Player Weapon \(team1.member1.playerWeapon?.damage)")
//    print("Team name : \(team1.name!)\t  Player Name : \(team1.member2!.playerName)\t      Player Type \(team1.member2!.playerType)     Player Life \(team1.member2!.playerLife)")
//    print("Team name : \(team1.name!)\t  Player Name : \(team1.member3!.playerName)\t      Player Type \(team1.member3!.playerType)     Player Life \(team1.member3!.playerLife)")
//    print("Team name : \(team2.name!)\t  Player Name : \(team2.member1!.playerName)\t      Player Type \(team2.member1!.playerType)     Player Life \(team2.member1!.playerLife)")
//    print("Team name : \(team2.name!)\t  Player Name : \(team2.member2!.playerName)\t      Player Type \(team2.member2!.playerType)     Player Life \(team2.member2!.playerLife)")
//    print("Team name : \(team2.name!)\t  Player Name : \(team2.member3!.playerName)\t      Player Type \(team2.member3!.playerType)     Player Life \(team2.member3!.playerLife)")
//
//    }


 
    func teamsAlive() -> Bool {
        
        var stillAlive: Bool
        
        if (team1.member1!.playerLife + team1.member2!.playerLife + team1.member3!.playerLife > 0 && team2.member1!.playerLife + team2.member2!.playerLife + team2.member3!.playerLife > 0)
        {
            stillAlive = true
        }
        
        else { stillAlive = false }
        
        return stillAlive
    }

    // MARK: nowFightP1
    func fighterSelection(currentTeam: Team) -> (Team, Team) {
        
        var opponentTeam: Team
        
        if (currentTeam.name == team1.name ) {
            
           opponentTeam = team2
        }
        else {
            opponentTeam = team1
        }
        
        
        print ("Now you'll have to fight !\n")
        
        print (" 1 - Player Name : \(currentTeam.member1!.playerName)      Player Type \(currentTeam.member1!.playerType)     Player Life \(currentTeam.member1!.playerLife)\n",
                "2 - Player Name : \(currentTeam.member2!.playerName)      Player Type \(currentTeam.member2!.playerType)     Player Life \(currentTeam.member2!.playerLife)\n",
                "3 - Player Name : \(currentTeam.member3!.playerName)      Player Type \(currentTeam.member3!.playerType)     Player Life \(currentTeam.member3!.playerLife)\n")
        
        print("\(currentTeam.name), select your player")



        var input:String? = readLine()

        switch input {

            case "1" :
                currentTeam.giver = currentTeam.member1
            case "2" :
                currentTeam.giver = currentTeam.member2
            case "3" :
                currentTeam.giver = currentTeam.member3
            default :
                print("\(currentTeam.name), select your player")
            }

        if (currentTeam.giver.playerType == "Mage") {

            print("You selected \(currentTeam.giver.playerName), the mage.")

            print (" 1 - Player Name : \(currentTeam.member1!.playerName)      Player Type \(currentTeam.member1!.playerType)     Player Life \(currentTeam.member1!.playerLife)\n",
                "2 - Player Name : \(currentTeam.member2!.playerName)      Player Type \(currentTeam.member2!.playerType)     Player Life \(currentTeam.member2!.playerLife)\n",
                "3 - Player Name : \(currentTeam.member3!.playerName)      Player Type \(currentTeam.member3!.playerType)     Player Life \(currentTeam.member3!.playerLife)\n")
            print("\(currentTeam.name),  Who you want to heal ?")


            input = readLine()

            switch input {

            case "1" :
                currentTeam.receiver = currentTeam.member1
            case "2" :
                currentTeam.receiver = currentTeam.member2
            case "3" :
                currentTeam.receiver = currentTeam.member3
            default :
                print("\(currentTeam.name), Who you want to heal ?")
                
                
//                if (currentTeam.receiver.playerLife >= constants.) {
//                
//                } else {
//                    print("\(currentTeam.giver.playerName) will heal \(currentTeam.receiver.playerName)")
//                    
//                }
            }
        }

        else {
            print("\(currentTeam.giver.playerName) will fight !")


            print (" 1 - Player Name : \(opponentTeam.member1!.playerName)      Player Type \(opponentTeam.member1!.playerType)     Player Life \(opponentTeam.member1!.playerLife)\n",
                "2 - Player Name : \(opponentTeam.member2!.playerName)      Player Type \(opponentTeam.member2!.playerType)     Player Life \(opponentTeam.member2!.playerLife)\n",
                "3 - Player Name : \(opponentTeam.member3!.playerName)      Player Type \(opponentTeam.member3!.playerType)     Player Life \(opponentTeam.member3!.playerLife)\n")

            print("\(currentTeam.name), select your target")

            input = readLine()

            switch input {

            case "1" :
                opponentTeam.receiver = opponentTeam.member1
            case "2" :
                opponentTeam.receiver = opponentTeam.member2
            case "3" :
                opponentTeam.receiver = opponentTeam.member3
            default :
                print("\(currentTeam.name), select your target")
               
        }

        print("\(currentTeam.giver.playerName) will fight \(opponentTeam.receiver.playerName)")
            
            print("Puissance de frappe : \(currentTeam.giver.playerWeapon!.damage)")
            
            opponentTeam.receiver.playerLife = opponentTeam.receiver.playerLife - currentTeam.giver.playerWeapon!.damage

        print("Les points de vie de \(opponentTeam.receiver.playerName) sont maintenant de \(opponentTeam.receiver.playerLife).")
        }
        
        
        return (currentTeam, opponentTeam)
        
    } //end func memberSelection()

    

    func diceRoll() -> Int {
                let dice1 =  """

            
            ---------
            |       |
            |   o   |
            |       |
            ---------

            """
                let dice2 = """

            ---------
            | o     |
            |       |
            |     o |
            ---------

            """

                let dice3 = """

            ---------
            | o     |
            |   o   |
            |     o |
            ---------

            """

                let dice4 = """

            ---------
            | o   o |
            |       |
            | o   o |
            ---------

            """

                let dice5 = """

            ---------
            | o   o |
            |   o   |
            | o   o |
            ---------

            """

                let dice6 = """

            ---------
            | o   o |
            | o   o |
            | o   o |
            ---------

            """

                let randomNum = Int(arc4random_uniform(5))
        
                switch randomNum {
                case 0 :
                    print(dice1)
                case 1 :
                    print(dice2)
                case 2 :
                    print(dice3)
                case 3 :
                    print(dice4)
                case 4 :
                    print(dice5)
                case 5 :
                    print(dice6)
                default :
                    print("This can't happen")
                }

            return randomNum
            } // enf of func diceRoll

    
    
    
    func whoStart() -> Bool {
        print("Who will start ? Let's roll a dice ! Odd number, player 1 start, even number player 2 start.")
         var isEven: Bool
        if diceRes % 2 == 0 { isEven = true}
        else {isEven = false}
        
        return isEven
        
    } //enf of whoStrat

    


    func theFightItself() {
        
        if (isEven == true) {game.fighterSelection(currentTeam: team1)}
        else {game.fighterSelection(currentTeam: team2)}
        
//        repeat{
//
//
//
//        } while stillAlive = true

    } //end of theFigtItself



} //End Of Class Game
