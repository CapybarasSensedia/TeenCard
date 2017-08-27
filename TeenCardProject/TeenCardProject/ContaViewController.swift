//
//  File.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/27/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit
import VisaCheckoutSDK

class ContaViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var checkoutButton: VisaCheckoutButton!

    @IBOutlet var recargaButton: UIButton!
//    @IBOutlet var finalizarButton: UIButton!
    @IBOutlet var valorTextField: UITextField!
    @IBOutlet var blurLayer: UIImageView!
    @IBOutlet var recargaCard: UIView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cardNumberLabel: UILabel!
    @IBOutlet weak var saldo: UILabel!
    @IBOutlet weak var saldoActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.blurLayer.isHidden = true
        self.recargaCard.isHidden = true
        self.recargaCard.layer.cornerRadius = self.recargaCard.frame.width/16
        
        self.recargaCard.clipsToBounds = true
        self.recargaButton.layer.cornerRadius = 10
        
        self.recargaButton.clipsToBounds = true
        //self.finalizarButton.layer.cornerRadius = 10
        //self.finalizarButton.clipsToBounds = true
        
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
        self.valorTextField.delegate = self
        
        checkoutButton.onCheckout(total: 1.5, currency: .brl)
        { (resultado) in
            if resultado != nil
            {
                print(resultado)
            }
        }
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.carregaDados()
    }
    
    
    @IBAction func recargaAction(_ sender: Any) {
        self.blurLayer.isHidden = false
        self.recargaCard.isHidden = false
    }
    
    @IBAction func dismissRecargaCard(_ sender: Any) {
        self.blurLayer.isHidden = true
        self.recargaCard.isHidden = true
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
        self.saldo.isHidden = true
        self.saldoActivityIndicator.startAnimating()
        AgilitaOperacoesDeCredito.getSaldo
            { (saldo, erro) in
                self.saldoActivityIndicator.stopAnimating()
                self.saldo.isHidden = false
                if let meuSaldo = saldo
                {
                    self.saldo.text = "\(meuSaldo)"
                }
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
