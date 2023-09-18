//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Atul Kumar on 18/09/23.
//

import UIKit

extension UIColor {
    
    static func randomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}

