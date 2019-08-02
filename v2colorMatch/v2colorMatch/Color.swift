//
//  Color.swift
//  v2colorMatch
//
//  Created by Tia Lendor on 8/2/19.
//  Copyright © 2019 Tia Lendor. All rights reserved.
//

import UIKit


struct Color {
    var red = 0.0
    var green = 0.0
    var blue = 0.0
    
    static func getRandomColor () -> Color {
        return Color (red: Double.random(in: 0...1),
                        green: Double.random(in: 0...1),
                        blue: Double.random(in: 0...1))
    }
    
    func toUIColor() -> UIColor {
        return UIColor(displayP3Red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }
    
    enum ColorType{
        case red
        case green
        case blue
        
    }
    
    func getDominantColor () -> ColorType {
        if max(red, green, blue) == red {
            return .red
        } else if max(red, green, blue) == green {
            return .green
        } else  {
            return .blue
        }
    }
}
