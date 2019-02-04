//
//  ViewController.swift
//  Concentration
//
//  Created by Navtesh Dhir on 04/02/19.
//  Copyright © 2019 Navtesh Dhir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips:\(flipCount)"
        flipCard(withEmoji: "👻", on: sender)
    }
    
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "Flips:\(flipCount)"
        flipCard(withEmoji: "🍔", on: sender)
    }
    
    
    func flipCard(withEmoji emoji : String, on button : UIButton){
       
        
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
    
 }
 
