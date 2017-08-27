//
//  MinhaContaViewController.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/26/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class MinhaContaViewController: UIViewController {

    @IBOutlet var recarregarButton: UIButton!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cardNumberLabel: UILabel!
    @IBOutlet weak var saldo: UILabel!
    
    @IBOutlet weak var saldoActivityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
