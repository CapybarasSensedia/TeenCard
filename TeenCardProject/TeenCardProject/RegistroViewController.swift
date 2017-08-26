//
//  RegistroViewController.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/26/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.mainAppColor()
        
        loginButton.backgroundColor = UIColor.secondaryAppColor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func EntrarTouchUpInside(_ sender: Any) {
        performSegue(withIdentifier: "EntrarSegue", sender: Any?.self)
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
