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
        // Do any additional setup after loading the view.
        
        diceImageViewLeft.image = UIImage(named: "DiceSix")
        
        // Challenge completion code, which is optional
        // diceImageViewLeft.alpha = 0.5
        
        diceImageViewRight.image = UIImage(named: "DiceTwo")
    }


}

