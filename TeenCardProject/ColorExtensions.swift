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
    
    // MARK: - Green-ish Colors
    
    class func turquoise()->UIColor {
        return UIColor(r: 26, g: 188, b: 156)
    }
    
    class func greenSea()->UIColor {
        return UIColor(r: 22, g: 160, b: 133)
    }
    
    class func emerald()->UIColor {
        return UIColor(r: 46, g: 204, b: 113)
    }
    
    class func nephritis()->UIColor {
        return UIColor(r: 39, g: 174, b: 96)
    }
    
    // MARK: - Blue-ish Colors
    
    class func peterRiver()->UIColor {
        return UIColor(r: 52, g: 152, b: 219)
    }
    
    class func belizeHole()->UIColor {
        return UIColor(r: 41, g: 128, b: 185)
    }
    
    // MARK: - Purple-ish Colors
    
    class func amethyst()->UIColor {
        return UIColor(r:155, g:89, b:182)
    }
    
    class func wisteria()->UIColor {
        return UIColor(r:142, g:68, b:173)
    }
    
    // MARK: - Dark-ish Colors
    class func wetAsphalt()->UIColor {
        return UIColor(r:52, g:73, b:94)
    }
    
    class func midnightBlue()->UIColor {
        return UIColor(r:44, g:62, b:80)
    }
    
    // MARK: - Yellow/Orange-ish Colors
    
    class func sunflower()->UIColor {
        return UIColor(r:241, g:196, b:15)
    }
    
    class func flatOrange()->UIColor {
        return UIColor(r:240, g:152, b:46)
    }
    
    class func carrot()->UIColor {
        return UIColor(r:230, g:126, b:34)
    }
    
    class func pumpkin()->UIColor {
        return UIColor(r:211, g:84, b:0)
    }
    
    // MARK: - Red-ish Colors
    
    class func alizarin()->UIColor {
        return UIColor(r:231, g:76, b:60)
    }
    
    class func pomegranate()->UIColor {
        return UIColor(r:192, g:57, b:43)
    }
    
    // MARK: - Gray-ish Colors
    
    class func clouds()->UIColor {
        return UIColor(r:236, g:240, b:241)
    }
    
    class func silver()->UIColor {
        return UIColor(r:189, g:195, b:199)
    }
    
    class func concrete()->UIColor {
        return UIColor(r:149, g:165, b:166)
    }
    
    class func asbestos()->UIColor {
        return UIColor(r:127, g:140, b:141)
    }
}


