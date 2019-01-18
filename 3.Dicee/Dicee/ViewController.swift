//
//  ViewController.swift
//  Dicee
//
//  Created by ali on 1/14/19.
//  Copyright © 2019 com.alireza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        
    }
    
    
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            updateDiceImages()
        }
    }
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: "dice"+"\(randomDiceIndex1 + 1)")
        diceImageView2.image = UIImage(named: "dice"+"\(randomDiceIndex2 + 1)")
    }
}

