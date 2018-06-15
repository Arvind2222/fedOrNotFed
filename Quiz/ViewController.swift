//
//  ViewController.swift
//  Quiz
//
//  Created by Arvind Mishra on 21/03/18.
//  Copyright © 2018 Arvind Mishra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions = [
    "Where was Rojer Fereder born in Switzerland?",
    "Rojer Fereder right Handed or left Handed?",
    "Which is the least grandslam won by federer?",
    "Which is the most win grandslam by federer?",
    "In Which year did Roger won his 1000th Win?"
    ]
    
    let answers = [
    "Basel, Switzerland",
    "Right Handed",
    "French Open",
    "Wimbeldon",
    "2015"
    ]
    
    var currentQuestionIndex = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    @IBAction func exit(_ sender: UIButton) {
        Darwin.exit(0)
    }
    
    
    
}

