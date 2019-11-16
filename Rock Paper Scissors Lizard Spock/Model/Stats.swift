//
//  Stats.swift
//  Rock Paper Scissors Lizard Spock
//
//  Created by Arthur Ford on 11/13/19.
//  Copyright © 2019 Arthur Ford. All rights reserved.
//

import Foundation


var arrayOfGames: [Game] = []



var averageOfPlayerRocks = 0
var averageOfPlayerPaper = 0
var averageOfPlayerScissors = 0
var averageOfPlayerLizard = 0
var averageOfPlayerSpock = 0

var averageOfComputerRocks = 0
var averageOfComputerPaper = 0
var averageOfComputerScissors = 0
var averageOfComputerLizard = 0
var averageOfComputerSpock = 0

var playerWinPercentage = 0
var computerWinPercentage = 0

func setAverages() {
    var numberOfPlayerRocks = 0
    var numberOfPlayerPaper = 0
    var numberOfPlayerScissors = 0
    var numberOfPlayerLizard = 0
    var numberOfPlayerSpock = 0
    
    var numberOfComputerRocks = 0
    var numberOfComputerPaper = 0
    var numberOfComputerScissors = 0
    var numberOfComputerLizard = 0
    var numberOfComputerSpock = 0
    
    var playerWins = 0
    var computerWins = 0
    
    for game in arrayOfGames {
        if game.playerMove == possibleMoves.rock {
            numberOfPlayerRocks += 1
        }
        if game.playerMove == possibleMoves.paper {
            numberOfPlayerPaper += 1
        }
        if game.playerMove == possibleMoves.scissors {
            numberOfPlayerScissors += 1
        }
        if game.playerMove == possibleMoves.lizard {
            numberOfPlayerLizard += 1
        }
        if game.playerMove == possibleMoves.spock {
            numberOfPlayerSpock += 1
        }
        
        if game.computerMove == possibleMoves.rock {
            numberOfComputerRocks += 1
        }
        if game.computerMove == possibleMoves.paper {
            numberOfComputerPaper += 1
        }
        if game.computerMove == possibleMoves.scissors {
            numberOfComputerScissors += 1
        }
        if game.computerMove == possibleMoves.lizard {
            numberOfComputerLizard += 1
        }
        if game.computerMove == possibleMoves.spock {
            numberOfComputerSpock += 1
        }
       
        if game.winner == winnerType.computer {
            computerWins += 1
        }
        if game.winner == winnerType.player {
            playerWins += 1
        }
        
        
        
        averageOfPlayerRocks = Int((Double(numberOfPlayerRocks) / Double(arrayOfGames.count) * 100).rounded())
        averageOfPlayerPaper = Int((Double(numberOfPlayerPaper) / Double(arrayOfGames.count) * 100).rounded())
        averageOfPlayerScissors = Int((Double(numberOfPlayerScissors) / Double(arrayOfGames.count) * 100).rounded())
        averageOfPlayerLizard = Int((Double(numberOfPlayerLizard) / Double(arrayOfGames.count) * 100).rounded())
        averageOfPlayerSpock = Int((Double(numberOfPlayerSpock) / Double(arrayOfGames.count) * 100).rounded())
        
        averageOfComputerRocks = Int((Double(numberOfComputerRocks) / Double(arrayOfGames.count) * 100).rounded())
        averageOfComputerPaper = Int((Double(numberOfComputerPaper) / Double(arrayOfGames.count) * 100).rounded())
        averageOfComputerScissors = Int((Double(numberOfComputerScissors) / Double(arrayOfGames.count) * 100).rounded())
        averageOfComputerLizard = Int((Double(numberOfComputerLizard) / Double(arrayOfGames.count) * 100).rounded())
        averageOfComputerSpock = Int((Double(numberOfComputerSpock) / Double(arrayOfGames.count) * 100).rounded())
        
        playerWinPercentage = Int((Double(playerWins) / Double(arrayOfGames.count) * 100).rounded())
        computerWinPercentage = Int((Double(computerWins) / Double(arrayOfGames.count) * 100).rounded())
        
        
    }
    
}
