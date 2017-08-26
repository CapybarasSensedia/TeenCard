//
//  ColorExtensions.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/26/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit
import Foundation

// MARK: - UIColor Extensions

/** Extends the UIColor type to include new colors,
 Usage: self.view.backgroundColor = UIColor.turquoiseColor()
 */

extension UIColor {
    
    /// EZSE: init method with RGB values from 0 to 255, instead of 0 to 1. With alpha(default:1)
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
    
    /// EZSE: init method with hex string and alpha(default: 1)
    public convenience init?(hexString: String, alpha: CGFloat = 1.0) {
        var formatted = hexString.replacingOccurrences(of: "0x", with: "")
        formatted = formatted.replacingOccurrences(of: "#", with: "")
        if let hex = Int(formatted, radix: 16) {
            let red = CGFloat(CGFloat((hex & 0xFF0000) >> 16)/255.0)
            let green = CGFloat(CGFloat((hex & 0x00FF00) >> 8)/255.0)
            let blue = CGFloat(CGFloat((hex & 0x0000FF) >> 0)/255.0)
            self.init(red: red, green: green, blue: blue, alpha: alpha)        } else {
            return nil
        }
    }
    
    /** This returns this App's theme color
     */
    class func mainAppColor()->UIColor {
        return UIColor(r: 243, g: 138, b: 0)
    }
    
    class func secondaryAppColor()->UIColor {
        return UIColor(r: 25, g: 25, b: 25)
    }
    
    class func mainTextColor()->UIColor{
        return UIColor(r: 185, g: 185, b: 185)
    }
    
    class func textHighlightColor()->UIColor{
        return UIColor(r: 25, g: 37, b: 51)
    }
    
    class func secondaryTextColor()->UIColor{
        return UIColor(r: 140, g: 140, b: 140)
    }
}


