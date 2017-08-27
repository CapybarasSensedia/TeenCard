//
//  MinhaContaViewController.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/26/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class MinhaContaViewController: UIViewController {

    // status bar with white text color
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBOutlet var recarregarButton: UIButton!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cardNumberLabel: UILabel!
    @IBOutlet weak var saldo: UILabel!
    @IBOutlet weak var saldoActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets background to a blank/empty image
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        // Sets shadow (line below the bar) to a blank image
        UINavigationBar.appearance().shadowImage = UIImage()
        // Sets the translucent background color
        UINavigationBar.appearance().backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        // Set translucent. (Default value is already true, so this can be removed if desired.)
        UINavigationBar.appearance().isTranslucent = true
        
        self.recarregarButton.layer.cornerRadius = 10
        self.recarregarButton.clipsToBounds = true
        
        //self.recarregarButton.backgroundColor = UIColor.secondaryAppColor().withAlphaComponent(0.7)
        self.carregaDados()
        
    }
    func carregaDados()
    {
        self.atualizaSaldo()
        
        let numero = (GerenciadorDeCartoes.cartaoAtual?.numeroDoCartao)!
        let last4 = numero.substring(from: numero.index(numero.endIndex, offsetBy: -4))
        print(last4)
        self.cardNumberLabel.text = "XXXX-XXXX-XXXX-" + last4
    }
    
    func atualizaSaldo()
    {
        self.saldoActivityIndicator.startAnimating()
        AgilitaOperacoesDeCredito.getSaldo
            { (saldo, erro) in
            self.saldoActivityIndicator.stopAnimating()
            if let meuSaldo = saldo
            {
                self.saldo.text = "\(meuSaldo)"
            }
        }
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
