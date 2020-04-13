//
//  ViewController.swift
//  timer-eggs
//
//  Created by Mike Di’ Lulo on 4/13/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes : [String: Int] = ["Soft Eggs": 320, "Medium Eggs": 420, "Hard Eggs": 720]
    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
    
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
     }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
        }
    }
        }


