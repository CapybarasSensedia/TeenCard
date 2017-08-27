//
//  TimeLineTableViewCell.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/27/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class LinhaDoTempoTableViewCell: UITableViewCell {
    
    @IBOutlet var icon: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var info: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    

}
