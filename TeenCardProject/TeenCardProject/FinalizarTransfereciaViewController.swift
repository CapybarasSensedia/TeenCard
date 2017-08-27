//
//  FinalizarTransfereciaViewController.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/27/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class FinalizarTransfereciaViewController: UIViewController {

    @IBOutlet var finalizarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.finalizarButton.layer.cornerRadius = self.finalizarButton.frame.width/16
        self.finalizarButton.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
