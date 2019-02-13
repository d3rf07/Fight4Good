//
//  Game.swift
//  FightForGood
//
//  Created by d3rf on 09/08/2018.
//  Copyright © 2018 d3rf. All rights reserved.
//

import Foundation

class Game {

    
    ///Turn counter
    var turnCounter = 1
    
    
    
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
 //       var duplicate: Bool = false
        var inputOK: Bool = false
        var returnValue = ""
        print("\(playerName) choose your team name : ", terminator: "")
        repeat {
            if let keyboardInput = readLine() {
                if keyboardInput.isEmpty {
                    inputOK = false
                    print("Team name is mandatory, please \(playerName) choose your team name !")
                    print("")
                } else if checkDuplicate(input: keyboardInput) {
                    print("This name is already taken, try again")
                }
                else {
                    inputOK = true
                    returnValue = keyboardInput
                    duplicateNames.memTeamNames.append(keyboardInput.uppercased())
                } // end of : if keyboardInput.isEmpty
            } // end of : if let keyboardInput = readLine()
        }  while !inputOK  // end of : repeat
        return returnValue
    } // end of : func teamNameChoice(playerNumber:String)
    

    
    //Select team memeber

    func teamMembersSelection(rank: String) -> Characters {
        
        let currentCharacter = Characters()
        
        //variable of input verification
        var isInputOk: Bool = false
        
    
        print("Now you will have to select the \(rank) characters from the 4 existing types\n")
        
        print(" 1 - Fighter: The classic attacker. A good warrior! \n" +
              " 2 - Mage: His talent? Treat his team members. \n" +
              " 3 - Colossus: Imposing and very resistant, but it won't hurt you very much \n" +
              " 4 - Dwarf: His axe will do you a lot of damage, but he doesn't have many health points.")
        
        print("")
        print("Select your \(rank) character's type : ", terminator: "")
        
//        while input!.isEmpty {
//            print("")
//            print("Please, select your \(rank) character's type")
//            input = readLine()
//        }

        repeat {
            
            if let inputKeybord = readLine() {
                
                switch inputKeybord {
                    
                    case "1" :
                        isInputOk = true
                        currentCharacter.playerType = constants.TYPE_FIGHTER
                        currentCharacter.playerWeapon = Sword()
                    case "2" :
                        isInputOk = true
                        currentCharacter.playerType = constants.TYPE_MAGE
                        currentCharacter.playerWeapon = Magic()
                    case "3" :
                        isInputOk = true
                        currentCharacter.playerType = constants.TYPE_COLOSSUS
                        currentCharacter.playerWeapon = Sledgehammer()
                    case "4" :
                        isInputOk = true
                        currentCharacter.playerType = constants.TYPE_DWARF
                        currentCharacter.playerWeapon = Axe()
                    default:
                        isInputOk = false
                        print("Try again !\n")
                } // end of : switch role
            } // end of : if let inputKeybord = readLine()
        } while isInputOk == false
        
        
        
        


        
        
//        var input = readLine()
//
//        while input!.isEmpty {
//            print("Anonymous players are not allowed, please, choose your player name. \n")
//            input = readLine()
//        }
//        currentCharacter.playerName = input!
        
        
        
        
        //affectation du nom
        
//        //variable of input verification
//        isInputOk = false
//
//        repeat {
//
//            if let inputKeybord = readLine() {
//
//                if inputKeybord.isEmpty {
//                    isInputOk = false
//                    print("Anonymous players are not allowed, please, choose your player name. \n")
//                } else {
//                    isInputOk = true
//                    currentCharacter.playerName = inputKeybord
//                } // end of : if inputKeybord.isEmpty
//            } // end of : if let inputKeybord = readLine()
//        } while isInputOk == false
        

        
        //setter player name
            
        var duplicate: Bool = false
    
        repeat {
            print("")
            print(  "Ok now choose your \(rank) character name : ", terminator: "")
            if let inputKeybord = readLine() {
                duplicate = checkDuplicate(input: inputKeybord)
                if duplicate {
                    print("This name is already taken, try again")
                } else {
                    currentCharacter.playerName = inputKeybord
                    duplicateNames.memCharacterNames.append(inputKeybord.uppercased())
                }
            } //if let input = readLine()
        } while duplicate == true // func setPlayerName()

        
        
        
        
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


    
    // check if name is duplicate
    func checkDuplicate(input: String) -> Bool {
        
        var duplicate: Bool = false
        
        //test if there is a duplicate name in the team and character
        for ijk in 0..<duplicateNames.memCharacterNames.count {
            if input.uppercased() == duplicateNames.memCharacterNames[ijk]  {
                duplicate = true
            }
        }
        
        for ijk in 0..<duplicateNames.memTeamNames.count {
            if input.uppercased() == duplicateNames.memTeamNames[ijk]  {
                duplicate = true
            }
        }
        
        
        return duplicate
    } // end of : func checkDuplicate()

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


 
    

    // MARK: nowFightP1
    func fighterSelection(currentTeam: Team) {
        
        var opponentTeam: Team
        
        //if (currentTeam.name == team1.name ) { ????????????????
        
        //=== operator checks if the references point the same instance, "identical to"
        if (currentTeam === team1 ) {
            
           opponentTeam = team2
        }
        else {
            opponentTeam = team1
        }
        
        
        print ("Now you'll have to fight !\n")
        
        print (" 1 - Player Name : \(currentTeam.members[0].playerName)      Player Type \(currentTeam.members[0].playerType)     Player Life \(currentTeam.members[0].playerLife)\n",
                "2 - Player Name : \(currentTeam.members[1].playerName)      Player Type \(currentTeam.members[1].playerType)     Player Life \(currentTeam.members[1].playerLife)\n",
                "3 - Player Name : \(currentTeam.members[2].playerName)      Player Type \(currentTeam.members[2].playerType)     Player Life \(currentTeam.members[2].playerLife)\n")
        
        print("\(currentTeam.name), select your player")



        let input:String? = readLine()

        switch input {

            case "1" :
                currentTeam.giver = currentTeam.members[0]
            case "2" :
                currentTeam.giver = currentTeam.members[1]
            case "3" :
                currentTeam.giver = currentTeam.members[2]
            default :
                print("\(currentTeam.name), select your player")
            }
        

        if (currentTeam.giver.playerType == "Mage") {
            
            currentTeam.giver.healing(currentTeam: currentTeam)// appel d'une fonction mage dans la classe Character

        } else {
            
            currentTeam.giver.realAttack(currentTeam: currentTeam, opponentTeam: opponentTeam)

        }
        
    } //end func fighterSelection()

    

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

    
    func teamsAlive() -> Bool {
        
        var stillAlive: Bool
        
        if (team1.members[0].playerLife + team1.members[1].playerLife + team1.members[2].playerLife > 0 && team2.members[0].playerLife + team2.members[1].playerLife + team2.members[2].playerLife > 0)
        {
            stillAlive = true
        }
            
        else { stillAlive = false }
        
        return stillAlive
    } // End of teamsAlive
   
    

    func theFightItself() {
        
        repeat {
            print("Round \(turnCounter)")
            turnCounter = +1
            if (isEven == true) {game.fighterSelection(currentTeam: team2); isEven = false;  print(isEven)}
            else {game.fighterSelection(currentTeam: team1); isEven = true;  print(isEven)}                 //end of theFigtItself
            
            } while stillAlive == true // End of repeat
           }
   

} //End Of Class Game
