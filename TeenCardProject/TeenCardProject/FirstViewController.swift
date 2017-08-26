//
//  FirstViewController.swift
//  TeenCardProject
//
//  Created by Marcelo Martimiano Junior on 26/08/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var agColors = [UIColor]()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillWithColors()
        self.view.backgroundColor = agColors[2]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func fillWithColors(){
        agColors.append(contentsOf: [UIColor.ag_darkBlue(), UIColor.ag_mediumBlue(), UIColor.ag_lightBlue(), UIColor.ag_darkGreen(), UIColor.ag_mediumGreen(), UIColor.ag_lightGreen()] )
    }

}

