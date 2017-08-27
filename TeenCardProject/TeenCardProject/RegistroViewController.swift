//
//  RegistroViewController.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/26/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var userField: UITextField!
    
    // status bar with white text color
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.backgroundColor = UIColor.secondaryAppColor().withAlphaComponent(0.7)
        loginButton.layer.cornerRadius = 10
        loginButton.clipsToBounds = true
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
        self.userField.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.dismissKeyboard()
        return false
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func EntrarTouchUpInside(_ sender: Any) {
        
        if(self.userField.text! == "clara@gmail.com") {
            performSegue(withIdentifier: "loginFilha", sender: Any?.self)
        } else if(self.userField.text! == "jose@gmail.com"){
            performSegue(withIdentifier: "loginPai", sender: Any?.self)
        }
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
