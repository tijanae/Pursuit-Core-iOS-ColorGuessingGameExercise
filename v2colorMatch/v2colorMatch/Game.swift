//
//  Game.swift
//  v2colorMatch
//
//  Created by Tia Lendor on 8/2/19.
//  Copyright © 2019 Tia Lendor. All rights reserved.
//

import Foundation

struct Game {
    var userScore = 0
    var hiScore = 0
    
    mutating func makeCorrectGuess() {
        userScore += 1
        if userScore > hiScore {
            hiScore += 1
        }
    }
    
    mutating func reset() {
        userScore = 0
    }
}
