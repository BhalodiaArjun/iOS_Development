//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by ArjunBhalodia on 3/22/19.
//  Copyright © 2019 Arjun Bhalodia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //This is the place where the image is linked
    @IBOutlet weak var eightBallPic: UIImageView!
    
    /**
     This function is loaded when the app is initially started
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateEightBallNum()
    }
    
    /**
     Senses the motion and outputs the answer
    */
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateEightBallNum()
    }

    /**
     This function activates when the user presses the Ask button
    */
    @IBAction func askButton(_ sender: UIButton) {
        updateEightBallNum()
    }
    
    /**
     This function updates the 8 ball image.
    */
    func updateEightBallNum(){
        let eightBallPicNumber = Int.random(in: 1 ... 5)
        eightBallPic.image = UIImage(named: "ball\(eightBallPicNumber)")
    }
    
}

