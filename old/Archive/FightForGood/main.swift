//
//  main.swift
//  FightForGood
//
//  Created by d3rf on 02/08/2018.
//  Copyright © 2018 d3rf. All rights reserved.
//

import Foundation

let game = Game()

/* This is the welcome screen with logo ontro */

game.intro()

// This was the welcome screen with logo ontro (and the logo is availbale in a var named logo)

game.playOrNot()


//Number of player

var teamName: String?

game.numberOfPlayers()

// This is where you choose the team's name, select your characters, and give them a name

game.teamNameChoice(playerNumber: "Player1")
let team1 = Team(name: teamName!)
team1.name = teamName!


//Select the team member

//game.teamMembersSelection()

//print (currentCharacter.playerName)
team1.member1 = game.teamMembersSelection()

print (team1.member1!.playerName)


//game.teamMembersSelection()

//print (currentCharacter.playerName)
team1.member2 = game.teamMembersSelection()

print (team1.member2!.playerName)
print (team1.member1!.playerName)

//game.teamMembersSelection()
team1.member3 = game.teamMembersSelection()
print (team1.member3!.playerName)
print (team1.member2!.playerName)
print (team1.member1!.playerName)

game.teamNameChoice(playerNumber: "Player2")
let team2 = Team(name: teamName!)
team2.name = teamName!

//Select the team member

//game.teamMembersSelection()
team2.member1 = game.teamMembersSelection()
print (team2.member1!.playerName)

//game.teamMembersSelection()
team2.member2 = game.teamMembersSelection()
print (team2.member2!.playerName)

//game.teamMembersSelection()
team2.member3 = game.teamMembersSelection()
print (team2.member3!.playerName)

game.summary()


//game.diceRoll()
//game.whoStart()

var isEven = game.whoStart()

var diceRes = game.diceRoll()

game.theFightItself()










