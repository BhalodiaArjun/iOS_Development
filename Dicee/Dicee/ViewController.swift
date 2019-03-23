//
//  ViewController.swift
//  Dicee
//
//  Created by CaughtUp on 3/22/19.
//  Copyright © 2019 Arjun Bhalodia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    /*
     This function is called after the loading screen
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    /*
     This is function invoked when the Roll Button is pressed
    */
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //This will get executed when the roll button gets pressed.
        updateDiceImages()
    }
    
    /*
     This method detects the motion of the phone and updates the dice face.
    */
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    /*
     This function updates the dice faces
     */
    func updateDiceImages() {
        
        let randomDiceIndex1: Int = Int.random(in: 0 ... 5)
        let randomDiceIndex2: Int = Int.random(in: 0 ... 5)
        diceImageView1.image = UIImage(named: (diceArray[randomDiceIndex1]))
        diceImageView2.image = UIImage(named: (diceArray[randomDiceIndex2]))
    }
}

