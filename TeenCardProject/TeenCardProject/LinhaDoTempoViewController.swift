//
//  FirstViewController.swift
//  TeenCardProject
//
//  Created by Marcelo Martimiano Junior on 26/08/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class LinhaDoTempoViewController: UITableViewController {

    
    let iconImage = ["Acougue", "Pastinha", "Supermercado", "Card", "User"]
    let infoText = ["Romulo Carnes R$65,50" , "Riachuelo R$150", "Amigão R$ 50,60", "Desbloqueado", "Com o aplicativo do Teen Card você poderá monitorar seus gastos, fazer transferência e poupar dinheiro"]
    let labelText = ["Açougue", "Vestuário", "Supermercado", "Seu cartão agora está", "Monitoramento"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "LinhaDoTempoCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "LinhaDoTempoCell")
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LinhaDoTempoCell", for: indexPath) as! LinhaDoTempoTableViewCell
        cell.icon.image = UIImage(named: (iconImage[indexPath.item]+".png"))?.withRenderingMode(.alwaysTemplate)
        cell.label.text = labelText[indexPath.item]
        cell.info.text = infoText[indexPath.item]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 375.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    
}

