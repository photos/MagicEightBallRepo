//
//  ViewController.swift
//  EightBallDecisions
//
//  Created by Forrest Collins on 2/10/16.
//  Copyright © 2016 helloTouch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //-------------------
    // MARK: - UI Outlets
    //-------------------
    @IBOutlet weak var decideButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerArray = ["Yes", "No", "Heck No", "Maybe", "Try Again", "Not Now", "Maybe Later", "Nah"]
    var numberSelect = 0
    
    //----------------------
    // MARK: - View Did Load
    //----------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomNumberSelect()
    }

    //-----------------------------
    // MARK: - Decide Button Tapped
    //-----------------------------
    @IBAction func decideButtonTapped(sender: AnyObject) {
        
        preAnimation()
        randomNumberSelect()
        showAnswer()
        printAnswer()
    }
    
    //-----------------------------
    // MARK: - Random Number Select
    //-----------------------------
    func randomNumberSelect() {
        numberSelect = Int(arc4random_uniform(UInt32(answerArray.count)))
    }
    
    //---------------------
    // MARK: - Print Answer
    //---------------------
    func printAnswer() {
        answerLabel.text = "\(answerArray[numberSelect])"
    }

    //--------------------
    // MARK: - Show Answer
    //--------------------
    func showAnswer() {
        UIView.animateWithDuration(1.0, delay: 0, options: .CurveLinear, animations: {
            
            self.answerLabel.alpha = 1.0
            self.decideButton.alpha = 1.0
            
        }, completion: nil)
    }
    
    //--------------------
    // MARK: Pre Animation
    //--------------------
    func preAnimation() {
        answerLabel.alpha = 0
        decideButton.alpha = 0
    }
}

