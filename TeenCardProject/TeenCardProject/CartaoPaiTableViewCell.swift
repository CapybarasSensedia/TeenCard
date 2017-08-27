//
//  CartaoPaiTableViewCell.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/27/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import Foundation
import UIKit

class CartaoPaiTableViewCell: UITableViewCell {
    
    @IBOutlet var cardNumberLabel: UILabel!
    @IBOutlet var ownerNameLabel: UILabel!
    @IBOutlet var expDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

