//
//  MinhaContaViewController.swift
//  TeenCardProject
//
//  Created by Clara Carneiro on 8/26/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class MinhaContaViewController: UIViewController {

    @IBOutlet var levelInfo: UITextView!
    @IBOutlet var starsLevel: UIImageView!
    @IBOutlet var badgeLevel: UIImageView!
    @IBOutlet var blurLayer: UIImageView!
    @IBOutlet var LevelCard: UIView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cardNumberLabel: UILabel!
    @IBOutlet weak var saldo: UILabel!
    @IBOutlet weak var saldoActivityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var poupe: UILabel!
    @IBOutlet weak var denivel: UILabel!
    @IBOutlet weak var RSLabel: UILabel!
    @IBOutlet weak var poupancaEsteMes: UILabel!
    @IBOutlet weak var poupancaTexto: UILabel!
    @IBOutlet weak var saldoRestante: UILabel!
    @IBOutlet weak var poupeImageView: UIImageView!
    
    @IBOutlet weak var carregarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.levelInfo.isHidden = true
        self.starsLevel.isHidden = true
        self.badgeLevel.isHidden = true
        self.blurLayer.isHidden = true
        self.LevelCard.isHidden = true
        self.LevelCard.layer.cornerRadius = self.LevelCard.frame.width/16
    
        self.LevelCard.clipsToBounds = true
        
        //self.recarregarButton.backgroundColor = UIColor.secondaryAppColor().withAlphaComponent(0.7)
        
       
       
            self.poupeImageView.isHidden = true
            self.RSLabel.isHidden = true
            self.poupancaEsteMes.isHidden = true
            self.poupancaTexto.isHidden = true
            self.saldoRestante.isHidden = true
            self.poupeImageView.isHidden = true
            self.poupe.isHidden = true
            self.denivel.isHidden = true
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.carregaDados()
    }
    
    
    @IBAction func SeuNivelTouchUpInside(_ sender: Any) {
        self.blurLayer.isHidden = false
        self.LevelCard.isHidden = false
        self.levelInfo.isHidden = false
        self.starsLevel.isHidden = false
        self.badgeLevel.isHidden = false
    }
    
    @IBAction func dismissLevelCard(_ sender: Any) {
        self.blurLayer.isHidden = true
        self.LevelCard.isHidden = true
        self.levelInfo.isHidden = true
        self.starsLevel.isHidden = true
        self.badgeLevel.isHidden = true
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
                self.saldo.text = String(format: "%.2f", meuSaldo)
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
