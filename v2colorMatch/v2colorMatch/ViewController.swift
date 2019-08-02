//
//  ViewController.swift
//  v2colorMatch
//
//  Created by Tia Lendor on 8/2/19.
//  Copyright © 2019 Tia Lendor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var urScoreLabel: UILabel!
    @IBOutlet weak var hiScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            print("red button")
        case 1:
            print("green ")
        case 2:
            print("blue")
        default:
            fatalError()
        }
    }
    
}

