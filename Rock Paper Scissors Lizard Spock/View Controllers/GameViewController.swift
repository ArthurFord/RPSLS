//
//  GameViewController.swift
//  Rock Paper Scissors Lizard Spock
//
//  Created by Arthur Ford on 11/13/19.
//  Copyright © 2019 Arthur Ford. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var game = Game()
    
    @IBOutlet weak var computerMoveLabel: UILabel!
    @IBOutlet weak var playerMoveLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet var gameButtons: [UIButton]!
    
    @IBOutlet weak var scissorButton: UIButton!

    @IBAction func buttonTapped(_ sender: UIButton) {
        game.playerMove = (sender.titleLabel?.text).map { possibleMoves(rawValue: $0) }!
        let winner = game.determineWinner(playerMove: game.playerMove!, computerMove: game.computerMove!)
        winnerLabel.text = winner.rawValue
        game.winner = winner
        for button in gameButtons {
            button.isEnabled = false
        }
        newGameButton.isHidden = false
        playerMoveLabel.text = game.playerMove!.rawValue
        computerMoveLabel.text = game.computerMove!.rawValue
        arrayOfGames.append(game)
        setAverages()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGames()
        createGame()
        // Do any additional setup after loading the view.
        for button in gameButtons {
            button.titleLabel?.adjustsFontSizeToFitWidth = true
            button.titleLabel?.minimumScaleFactor = 0.3
        }
        newGameButton.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    func createGame() {
        game = Game(playerMove: .none, computerMove: game.getComputerMove(), winner: .none)
        newGameButton.isHidden = true
        for button in gameButtons {
            button.isEnabled = true
        }
        computerMoveLabel.text = ""
        playerMoveLabel.text = ""
        winnerLabel.text = ""
    }
   
    @IBAction func newGameButtonTapped(_ sender: UIButton) {
        createGame()
    }
}
