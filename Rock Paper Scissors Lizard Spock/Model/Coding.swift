//
//  Coding.swift
//  Rock Paper Scissors Lizard Spock
//
//  Created by Arthur Ford on 11/14/19.
//  Copyright © 2019 Arthur Ford. All rights reserved.
//

import Foundation

extension possibleMoves: Codable {
    enum CodingKeys: CodingKey {
        case rock
        case paper
        case scissors
        case lizard
        case spock
    }
}

extension winnerType: Codable {
    enum CodingKeys: CodingKey {
        case player
        case computer
        case draw
    }
}

extension Game {
    enum CodingKeys: String, CodingKey {
        case playerMove
        case computerMove
        case winner
    }
}

extension Game: Codable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(playerMove, forKey: .playerMove)
        try container.encode(computerMove, forKey: .computerMove)
        try container.encode(winner, forKey: .winner)
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        playerMove = try values.decode(possibleMoves.self, forKey: .playerMove)
        computerMove = try values.decode(possibleMoves.self, forKey: .computerMove)
        winner = try values.decode(winnerType.self, forKey: .winner)
    }
}

func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}

let path = getDocumentsDirectory().appendingPathComponent("RPSLS.txt")

func saveGames() {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    var data = Data()
    
    do {
        try data = encoder.encode(arrayOfGames)
    } catch {
        print("error")
    }
    do {
        try data.write(to: path)
    } catch  {
        print("error")
    }
}

func loadGames() {
    let data = getDataFromFile()
    let decoder = JSONDecoder()
    do {
        arrayOfGames = try decoder.decode([Game].self, from: data as Data)
    } catch {
        print("fail")
    }
}

func getDataFromFile() -> NSData {
    
    if let data = NSData(contentsOf: path) {
        return data
    } else {
        saveGames()
        let data = NSData(contentsOf: path)
        return data!
    }
}

func resetStats() {
    arrayOfGames = []
    averageOfPlayerRocks = 0
    averageOfPlayerPaper = 0
    averageOfPlayerScissors = 0
    averageOfPlayerLizard = 0
    averageOfPlayerSpock = 0
    
    averageOfComputerRocks = 0
    averageOfComputerPaper = 0
    averageOfComputerScissors = 0
    averageOfComputerLizard = 0
    averageOfComputerSpock = 0
    
    playerWinPercentage = 0
    computerWinPercentage = 0
    
    saveGames()
    
}

