//
//  MeuCartaoTableViewCell.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/26/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class MeuCartaoTableViewCell: UITableViewCell {
    
    
    @IBOutlet var cardNumberLabel: UILabel!
    @IBOutlet var ownerNameLabel: UILabel!
    @IBOutlet var expDateLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.backgroundColor = UIColor.mainAppColor()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
