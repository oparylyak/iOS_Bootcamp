//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Interface builder outlet - IBOutlet
    // Main.storyboard - interface builder
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewLeft.image = UIImage(named: getRandomDiceName())
        diceImageViewRight.image = UIImage(named: getRandomDiceName())
    }
    
    private func getRandomDiceName() -> String {
        let dices = ["One", "Two", "Three", "Four", "Five", "Six"]
        let randomDiceNumber = dices.randomElement() ?? "One"
        let randomDice = "Dice\(randomDiceNumber)"
        
        return randomDice
    }
}

