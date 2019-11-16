//
//  InstructionsViewController.swift
//  Rock Paper Scissors Lizard Spock
//
//  Created by Arthur Ford on 11/13/19.
//  Copyright © 2019 Arthur Ford. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.contentMode = .scaleAspectFit
        imageView.contentScaleFactor = 0.3
        // Do any additional setup after loading the view.
    }
    
}
