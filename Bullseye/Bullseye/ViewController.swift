//
//  ViewController.swift
//  Bullseye
//
//  Created by Sedrick Cashaw Jr on 12/29/17.
//  Copyright © 2017 Sedrick Cashaw Jr. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numLbl: UILabel!
    @IBOutlet weak var numSlider: UISlider!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var exactSwitch: UISwitch!
    @IBOutlet weak var playAgainBtn: UIButton!
    
    var randomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNumber = Int(arc4random_uniform(101))
        numLbl.text = "Move the slider to: \(randomNumber)"
    }

    @IBAction func sliderValueChanged(_ sender: Any) {
        
    }
    
    @IBAction func checkValue(_ sender: Any) {
        if exactSwitch.isOn == false{
            if Int(numSlider.value) <= (randomNumber + 3 ) && Int(numSlider.value) >= (randomNumber - 3 ){
                resultLbl.text = "You were right on point! Bullseye!"
                resultLbl.backgroundColor = UIColor.green
            }else{
                resultLbl.text = "Oops, you missed! Try Again!"
                resultLbl.backgroundColor = UIColor.red
            }
        }else{
            if Int(numSlider.value) == randomNumber{
                resultLbl.text = "You were right on point! Bullseye!"
                resultLbl.backgroundColor = UIColor.green
            }else{
                resultLbl.text = "Oops, you missed! Try Again!"
                resultLbl.backgroundColor = UIColor.red
            }

        }
        resultLbl.isHidden = false
        playAgainBtn.isHidden = false
        
    }
    
    @IBAction func playAgain(_ sender: Any) {
        numSlider.setValue(50.0, animated: false)
        randomNumber = Int(arc4random_uniform(101))
        numLbl.text = "Move the slider to: \(randomNumber)"
        playAgainBtn.isHidden = true
        resultLbl.isHidden = true
        
    }
    
    
    
}

