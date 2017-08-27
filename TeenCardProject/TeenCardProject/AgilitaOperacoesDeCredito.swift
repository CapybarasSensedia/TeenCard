//
//  File.swift
//  TeenCardProject
//
//  Created by Marcelo Martimiano Junior on 26/08/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit
import  

class AgilitaOperacoesDeCredito
{
    static func getSaldo(completionHandler: @escaping (Double?, Error?) -> Void)
    {
        SwaggerClientAPI.customHeaders = ["client_id" : "0e91e65b-5e71-391e-8e11-42a8627e8d22", "access_token" : "7de02a66-4862-3ab4-875c-9185a02f4f9b"]
        
        let idCartao = GerenciadorDeCartoes.cartaoAtual!.proxy
        CartoesAPI.cartoesIdCartaoSaldoGet(idCartao: idCartao)
        { (saldo, erro) in
            if (saldo != nil)
            {
                
                completionHandler(saldo?.saldo?.valor, nil)
                print(saldo?.saldo?.valor)
            }
            else
            {
                completionHandler(nil, erro)
                print(erro.debugDescription)
            }
        }
    }
    
    static func getExtrato()
    {
        SwaggerClientAPI.customHeaders = ["client_id" : "0e91e65b-5e71-391e-8e11-42a8627e8d22", "access_token" : "7de02a66-4862-3ab4-875c-9185a02f4f9b"]
        
       // let final = Date()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-mm-dd"
        //let inicial = formatter.date(from: "2017/08/26")!
        //let inicial = Date()
        
        CartoesAPI.cartoesIdCartaoExtratoGet(idCartao: "3713100018790", dataInicial: Date(), dataFinal: Date(),         completion:
        { (RespostaExtrato, Erro) in
            if (RespostaExtrato != nil)
            {
                let novoExtrato = RespostaExtrato?.extrato
                let numOperacoes = novoExtrato?.count
                
                for operation in novoExtrato!
                {
                    print(operation.dataHora)
                    print(operation.estabelecimento)
                    print(operation.tipo)
                    print(operation.valor)
                }
            
                
            }
            else
            {
                print("Erro no extrato")
                print(Erro.debugDescription)
            }
        })
    

    }
}
