//
//  Game.swift
//  Rock Paper Scissors Lizard Spock
//
//  Created by Arthur Ford on 11/13/19.
//  Copyright © 2019 Arthur Ford. All rights reserved.
//  Spock emoji used on icon Copyright 2019 Twitter, Inc and other contributors
//

import Foundation


enum possibleMoves: String {
    
    case rock = "👊"
    case paper = "✋"
    case scissors = "✌️"
    case lizard = "👌"
    case spock = "🖖"
}

enum winnerType: String {
    case player = "Player"
    case computer = "iPhone"
    case draw = "Draw"
}

struct Game {
    var playerMove: possibleMoves?
    var computerMove: possibleMoves?
    var winner: winnerType?
    
    func determineWinner(playerMove: possibleMoves, computerMove: possibleMoves) -> winnerType {
        
        let gameWinner: winnerType = .draw
        
        switch playerMove {
        case .rock:
            if computerMove == .rock {
                return .draw
            }
            if computerMove == .paper {
                return .computer
            }
            if computerMove == .scissors {
                return .player
            }
            if computerMove == .lizard {
                return .player
            }
            if computerMove == .spock {
                return .computer
            }
        case .paper:
            if computerMove == .rock {
                return .player
            }
            if computerMove == .paper {
                return .draw
            }
            if computerMove == .scissors {
                return .computer
            }
            if computerMove == .lizard {
                return .computer
            }
            if computerMove == .spock {
                return .player
            }
        case .scissors:
            if computerMove == .rock {
                return .computer
            }
            if computerMove == .paper {
                return .player
            }
            if computerMove == .scissors {
                return .draw
            }
            if computerMove == .lizard {
                return .player
            }
            if computerMove == .spock {
                return .computer
            }
        case .lizard:
            if computerMove == .rock {
                return .computer
            }
            if computerMove == .paper {
                return .player
            }
            if computerMove == .scissors {
                return .computer
            }
            if computerMove == .lizard {
                return .draw
            }
            if computerMove == .spock {
                return .player
            }
        case .spock:
            if computerMove == .rock {
                return .player
            }
            if computerMove == .paper {
                return .computer
            }
            if computerMove == .scissors {
                return .player
            }
            if computerMove == .lizard {
                return .computer
            }
            if computerMove == .spock {
                return .draw
            }
        }
        return gameWinner
    }
    
    func getComputerMove() -> possibleMoves {
        var array: [possibleMoves] = [possibleMoves.rock, possibleMoves.paper, possibleMoves.scissors, possibleMoves.lizard, possibleMoves.spock]
        array.shuffle()
        return array.first!
    }
}

