//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var barView: UIProgressView!
    var eggTimes = ["Soft":3,"Medium":4,"Hard":10]
    
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    

    
    @IBAction func hardnessSelection(_ sender: UIButton) {
        timer.invalidate()
        var hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        barView.progress = 0.0
        mainLabel.text = hardness
        secondPassed = 0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
   
}
   
    
    @objc func updateCounter() {
        //example functionality
        
        if secondPassed < totalTime {
            secondPassed += 1
            barView.progress = Float(secondPassed) / Float(totalTime)
            print(Float(secondPassed) / Float(totalTime))
        }else {
                timer.invalidate()
                mainLabel.text = "Bitti"
            
        }
    }
}



