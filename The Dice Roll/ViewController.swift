//
//  ViewController.swift
//  The Dice Roll
//
//  Created by Deipayan Dash on 29/04/18.
//  Copyright © 2018 Deipayan Dash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var randomIndex1:Int = 0
    var randomIndex2:Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {

        updateDice()
        
    }
    func updateDice() {
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
        
        diceImage1.image = UIImage(named: diceArray[randomIndex1])
        diceImage2.image = UIImage(named: diceArray[randomIndex2])
        
        
    
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
}

