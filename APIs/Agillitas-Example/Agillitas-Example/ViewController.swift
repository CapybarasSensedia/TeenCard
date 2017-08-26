//
//  ViewController.swift
//  Agillitas-Example
//
//  Created by Henrique Gouveia on 26/08/17.
//  Copyright © 2017 Henrique Gouveia. All rights reserved.
//

import UIKit
import AgillitasClient

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SwaggerClientAPI.customHeaders = ["client_id" : "2413e2cf-c0a5-346b-a7d4-894bbc79755a", "access_token" : "d642aefa-3317-33de-8a13-f6ac19016426"]
        CartoesAPI.cartoesIdCartaoExtratoGet(idCartao: "1234", dataInicial: Date(), dataFinal: Date()) { (response: ExtratoResponse?, error: Error?) in
            print(response ?? "")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

