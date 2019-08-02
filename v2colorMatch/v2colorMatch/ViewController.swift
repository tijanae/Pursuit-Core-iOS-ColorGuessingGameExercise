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
    
    var color = Color.getRandomColor()
    var game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = color.toUIColor()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorButtonPressed(_ sender: UIButton) {
        let guessedColor: Color.ColorType
        switch sender.tag {
        case 0: guessedColor = .red
        case 1: guessedColor = .green
        case 2: guessedColor = .blue
        default: fatalError()
        }
        if color.getDominantColor() == guessedColor {
            game.makeCorrectGuess()
        } else {
            game.reset()
        }
        hiScoreLabel.text = "urScore: \(game.hiScore)"
        urScoreLabel.text = "urScore: \(game.userScore)"

//        switch sender.tag {
//        case 0:
//            if color.getDominantColor() == .red {
//                print("You win!")
//            } else {
//                print("You lose")
//            }
//        case 1:
//            if color.getDominantColor() == .green {
//                print("You win!")
//            } else {
//                print("You lose")
//            }
//        case 2:
//            if color.getDominantColor() == .blue {
//                print("You win!")
//            } else {
//                print("You lose")
//            }
//        default:
//            fatalError()
//        }
        color = Color.getRandomColor()
        colorView.backgroundColor = color.toUIColor()
    }
    
}

