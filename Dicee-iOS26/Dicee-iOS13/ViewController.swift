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
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageViewLeft.image = diceArray.randomElement()
        diceImageViewRight.image = diceArray.randomElement()
    }
}

//    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        My realization for current lessons with func below
//        diceImageViewLeft.image = UIImage(named: getRandomDiceName())
//        diceImageViewRight.image = UIImage(named: getRandomDiceName())
//        My realization for current lessons with func below
//
//        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
//        
//        diceImageViewLeft.image = diceArray[Int.random(in: 0...5)]
//        diceImageViewRight.image = diceArray[Int.random(in: 0...5)]
//    }
//    
//    private func getRandomDiceName() -> String {
//        
//        let dices = ["One", "Two", "Three", "Four", "Five", "Six"]
//        
//        let randomDiceNumber = dices.randomElement() ?? "One"
//        let randomDice = "Dice\(randomDiceNumber)"
//        
//        return randomDice
//    }


