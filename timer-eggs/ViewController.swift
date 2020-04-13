//
//  ViewController.swift
//  timer-eggs
//
//  Created by Mike Di’ Lulo on 4/13/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        switch hardness {
        case "Soft Eggs":
            print(softTime)
        case "Medium Eggs":
            print(mediumTime)
        case "Hard Eggs":
            print(hardTime)
        default:
            print("Error")
        }
}

}
