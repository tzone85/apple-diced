//
//  ViewController.swift
//  Dicee
//
//  Created by Thando Mini on 2017/09/21.
//  Copyright © 2017 Thando Mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceAray = ["dice1", "dice2", "dice3","dice4", "dice5", "dice6"]
    
    // IBOutlet, changes the appearance of the ui element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // generate random die images when the app loads up
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // IBAction, notifies the code, when the ui element has been interacted with
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceAray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceAray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
//    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
//        updateDiceImages()
//    }
}

