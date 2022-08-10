//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreText: UILabel!
    @IBOutlet weak var questText: UILabel!
    
    
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    var timer = Timer()
    var quizBrain = QuizBrain()
    var allAnswer = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
      
       /* answerOne.currentTitle! = allAnswer[0]
        answerOne.currentTitle! = allAnswer[1]
        answerOne.currentTitle! = allAnswer[2]*/
        print(answerTwo.currentTitle!)
       
        updateUI()
    }
   

    

    @IBAction func answerButton(_ sender: UIButton) {
        let answer = sender.currentTitle!
       
        
        
        
        let actualAnswer = quizBrain.checkAnswer(answer)
    
        
        if actualAnswer {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.quizStatus()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateUI(){
       questText.text = quizBrain.getQuestionText()
       allAnswer = quizBrain.getQuestionAnswer()
       answerOne.setTitle(allAnswer[0], for: UIControl.State.normal)
       answerTwo.setTitle(allAnswer[1], for: UIControl.State.normal)
       answerThree.setTitle(allAnswer[2], for: .normal)
       progressBar.progress = quizBrain.getProgress()
       scoreText.text = "Score : \(quizBrain.getScore())"
        answerOne.backgroundColor = UIColor.clear
        answerTwo.backgroundColor = UIColor.clear
       answerThree.backgroundColor = UIColor.clear
       
    }
    
    
}

