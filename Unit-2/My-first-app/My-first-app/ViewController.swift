//
//  ViewController.swift
//  My-first-app
//
//  Created by Kelby Mittan on 10/28/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //implicit unwrapping of an optional
    // weak is a memory optomizing feature
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    
    @IBAction func colorChangedButtonPressed(_ sender: UIButton) {
        
        var newColor: (color: UIColor?, name: String)
        
        switch sender.tag {
        case 0:
            newColor = (.blue, "blue")
        
        case 1:
            newColor = (.green, "green")
            
        case 2:
            newColor = (.red, "red")
        default:
            newColor = (.white, "white")
            
        }
        view.backgroundColor = newColor.color
        displayLabel.text = "the background color is \(newColor.name)"
//        guard let buttonTitle = sender.titleLabel?.text else {
//            return
//        }
//        switch buttonTitle.lowercased() {
//        case "red":
//            displayLabel.text = "The backgrond color is red"
//            view.backgroundColor = .red
//        case "green":
//            displayLabel.text = "The backgrond color is green"
//            view.backgroundColor = .green
//        case "blue":
//            displayLabel.text = "The backgrond color is blue"
//            view.backgroundColor = .blue
//        default:
//            print("error")
//        }
    }
    
    
    
}

