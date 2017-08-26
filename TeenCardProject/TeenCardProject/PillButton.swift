//
//  PillButton.swift
//  TeenCardProject
//
//  Created by Lucas Mendonça on 26/08/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

//
//  PillButton.swift
//  SmartCards
//
//  Created by André Vitor Terron on 1/8/16.
//  Copyright © 2016 Work2. All rights reserved.
//

import UIKit

class PillButton: UIButton {
    
    override var isHighlighted: Bool {
        didSet {
            if (self.isHighlighted) {
                self.backgroundColor = self.tintColor
            } else {
                self.backgroundColor = UIColor.clear
            }
        }
    }
    
    override var tintColor: UIColor! {
        didSet {
            self.layer.borderColor = self.tintColor.cgColor
            self.setTitleColor(self.tintColor, for: UIControlState.normal)
            if (self.isHighlighted) {
                self.backgroundColor = self.tintColor
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 2
        let inset = self.contentEdgeInsets
        let minInset = 2 * self.frame.height / 5
        self.contentEdgeInsets = UIEdgeInsetsMake(inset.top, max(inset.left, minInset), inset.bottom, max(inset.right, minInset))
    }
    
    func setup() {
        if let label = self.titleLabel {
            label.adjustsFontSizeToFitWidth = true
            label.baselineAdjustment = .alignCenters
            //            label.backgroundColor = UIColor.blueColor()
        }
        self.clipsToBounds = true
        self.layer.borderColor = self.tintColor.cgColor
        self.layer.borderWidth = 3
        self.setTitleColor(self.tintColor, for: UIControlState.normal)
        self.setTitleColor(UIColor.white, for: .selected)
        self.setTitleColor(UIColor.white, for: .highlighted)
    }
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
    
}
