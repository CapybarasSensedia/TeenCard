//
//  TransferenciaViewController.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/26/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class TransferenciaViewController: UIViewController {

    
    @IBOutlet var barrinha: UIView!
    @IBOutlet var listaDeDestinatarios: UIView!
    
    // status bar with white text color
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.barrinha.isHidden = true
        self.listaDeDestinatarios.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func findDestinatario(_ sender: Any) {
        self.barrinha.isHidden = false
        self.listaDeDestinatarios.isHidden = false
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
