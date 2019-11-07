//
//  ViewController.swift
//  warm-up-flashlight
//
//  Created by Kelby Mittan on 10/29/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var backgroundBlackOrWhite: UIView!
    
    @IBAction func switchOnOrOff(_ sender: UISwitch) {
        if sender.isOn {
            backgroundBlackOrWhite.backgroundColor = .white
        } else {
            backgroundBlackOrWhite.backgroundColor = .black
        }
    }
    
}

