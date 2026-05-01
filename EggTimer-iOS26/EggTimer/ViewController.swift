//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var timerProgress: UIProgressView!
    
    let eggTimes: [String: Int] = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        timerProgress.progress = 0.0
        secondsPassed = 0
        timerLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true )
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            timerProgress.progress = Float(secondsPassed)/Float(totalTime)
        } else {
            timer.invalidate()
            timerLabel.text = "Done!"
            playSound()
        }
    }
    
    func playSound() {
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")!
            player = try! AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            player.play()
        }
    
    
    //    func startTimer(time: Int) {
    //        var countdownTimer = time
    //
    //        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
    //            if countdownTimer > 0 {
    //                print("\(countdownTimer) seconds")
    //                countdownTimer -= 1
    //            } else {
    //                timer.invalidate()
    //                print("Timer: Complete!")
    //            }
    //        }
    //    }
    
    //    func loveCalculator() {
    //        let loveScore = Int.random(in: 0...100)
    //
    //        if loveScore > 80 {
    //            print("You love each other like Kanye loves Kanye \(loveScore)")
    //        } else if loveScore > 40 {
    //            print ("You go together like Coke an Mentos \(loveScore)")
    //        } else {
    //            print ("You`ll be forever alone \(loveScore)")
    //        }
    //
    //        switch loveScore {
    //        case 81...100:
    //            print("You love each other like Kanye loves Kanye \(loveScore)")
    //        case 40..<80:
    //            print ("You go together like Coke an Mentos \(loveScore)")
    //        case ..<40:
    //            print ("You`ll be forever alone \(loveScore)")
    //        default:
    //            print("Too much love")
    //        }
    //    }
}
