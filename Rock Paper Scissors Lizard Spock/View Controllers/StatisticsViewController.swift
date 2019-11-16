//
//  StatisticsViewController.swift
//  Rock Paper Scissors Lizard Spock
//
//  Created by Arthur Ford on 11/13/19.
//  Copyright © 2019 Arthur Ford. All rights reserved.
//

import UIKit

class StatisticsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setAverages()
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateStatsUI()
    }
    
    func updateStatsUI() {
        playerRockLabel.text = String(averageOfPlayerRocks) + "%"
        computerRockLabel.text = String(averageOfComputerRocks) + "%"
        
        playerPaperLabel.text = String(averageOfPlayerPaper) + "%"
        computerPaperLabel.text = String(averageOfComputerPaper) + "%"
        
        playerScissorsLabel.text = String(averageOfPlayerScissors) + "%"
        computerScissorsLabel.text = String(averageOfComputerScissors) + "%"
        
        playerLizardLabel.text = String(averageOfPlayerLizard) + "%"
        computerLizardLabel.text = String(averageOfComputerLizard) + "%"
        
        playerSpockLabel.text = String(averageOfPlayerSpock) + "%"
        computerSpockLabel.text = String(averageOfComputerSpock) + "%"
        
        playerWinPctLabel.text = String(playerWinPercentage) + "%"
        computerWinPctLabel.text = String(computerWinPercentage) + "%"
        gamesPlayedLabel.text = String(arrayOfGames.count)
    }
    
    @IBOutlet weak var playerRockLabel: UILabel!
    @IBOutlet weak var computerRockLabel: UILabel!
    @IBOutlet weak var playerPaperLabel: UILabel!
    @IBOutlet weak var computerPaperLabel: UILabel!
    @IBOutlet weak var playerScissorsLabel: UILabel!
    @IBOutlet weak var computerScissorsLabel: UILabel!
    @IBOutlet weak var playerLizardLabel: UILabel!
    @IBOutlet weak var computerLizardLabel: UILabel!
    @IBOutlet weak var playerSpockLabel: UILabel!
    @IBOutlet weak var computerSpockLabel: UILabel!
    @IBOutlet weak var playerWinPctLabel: UILabel!
    @IBOutlet weak var computerWinPctLabel: UILabel!
    @IBOutlet weak var gamesPlayedLabel: UILabel!
    
    @IBAction func resetStatsButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Delete All Games", message: "This will delete all of your game data.  Are you sure?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: {_ in
            resetStats()
            self.updateStatsUI()
        }))
        self.present(alert, animated: true, completion: nil)
        
        //resetStats()
        //updateStatsUI()
    }
    
    
}
