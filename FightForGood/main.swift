//
//  main.swift
//  FightForGood
//
//  Created by d3rf on 02/08/2018.
//  Copyright © 2018 d3rf. All rights reserved.
//

import Foundation



let constants = Constants()

let game = Game()




/* This is the welcome screen with logo ontro */

//game.intro()

// This was the welcome screen with logo ontro (and the logo is availbale in a var named logo)

//

//game.playOrNot()


//Number of player

//var teamName: String?

//game.numberOfPlayers()


// This is where you choose the team's name, select your characters, and give them a name

//var teamName = game.teamNameChoice(playerNumber: constants.TEAM_NAME1)

let team1 = Team(name: game.teamNameChoice(playerName: constants.TEAM_NAME1))
print("")
print("ok, welcome \(team1.name)")
print("")
//Select the team member

//game.teamMembersSelection()

//print (currentCharacter.playerName)
//team1.member1 = game.teamMembersSelection(rank: "first")
//print("")
//print("welcome \(team1.member1.playerName), the \(team1.member1.playerType)")
//print("")


// Lord de la première écriture dans un tableau, il faut utiliser un append,
//parce que swift tente de se "connecter" à l'index "0", mais il n'existe pas encore,
//d'ou "erreur".
team1.members.append(game.teamMembersSelection(rank: "first"))
print("")
print("WELCOME \(team1.members[0].playerName), the \(team1.members[0].playerType)")
print("")

team1.members.append(game.teamMembersSelection(rank: "second"))
print("")
print("welcome \(team1.members[1].playerName), the \(team1.members[1].playerType)")
print("")

team1.members.append(game.teamMembersSelection(rank: "third"))
print("")
print("welcome \(team1.members[2].playerName), the \(team1.members[2].playerType)")
print("")



let team2 = Team(name: game.teamNameChoice(playerName: constants.TEAM_NAME2))
print("")
print("ok, welcome \(team2.name)")
print("")
//Select the team member

//game.teamMembersSelection()

//print (currentCharacter.playerName)
team2.members.append(game.teamMembersSelection(rank: "first"))
print("")
print("welcome \(team2.members[0].playerName), the \(team2.members[0].playerType)")
print("")

team2.members.append(game.teamMembersSelection(rank: "second"))
print("")
print("welcome \(team2.members[1].playerName), the \(team2.members[1].playerType)")
print("")

team2.members.append(game.teamMembersSelection(rank: "fird"))
print("")
print("welcome \(team2.members[2].playerName), the \(team2.members[2].playerType)")
print("")



//Select the team member

//game.teamMembersSelection()

//print (currentCharacter.playerName)
//team1.member1 = game.teamMembersSelection()
//print (team1.member1.playerName)
//
//team1.member2 = game.teamMembersSelection()
//print (team1.member2.playerName)
//
//team1.member3 = game.teamMembersSelection()
//print (team1.member3.playerName)


//game.teamNameChoice(playerNumber: "Player2")
//let team2 = Team(name: teamName)
//team2.name = teamName

//Select the team member

//game.teamMembersSelection()


//game.summary()


//game.diceRoll()
//game.whoStart()

var isEven = game.whoStart()

var diceRes = game.diceRoll()

var stillAlive = game.teamsAlive()

game.theFightItself()










