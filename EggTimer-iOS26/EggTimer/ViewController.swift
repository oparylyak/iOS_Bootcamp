//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    let hardnesesArray = ["Soft", "Medium", "Hard"]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
        if hardness == hardnesesArray[0] {
            print(softTime)
        } else if hardness == hardnesesArray[1] {
            print(mediumTime)
        } else if hardness == hardnesesArray[2] {
            print(hardTime)
        }
        
        loveCalculator()
    }
    
    func loveCalculator() {
        let loveScore = Int.random(in: 0 ... 100)
        
        if loveScore > 80 {
            print("You love each other like Kaney loves Kaney \(loveScore)")
        } else if loveScore > 40 {
            print ("You go together like Coke an Mentos \(loveScore)")
        } else {
            print ("You`ll be forever alone \(loveScore)")
        }
    }
}
