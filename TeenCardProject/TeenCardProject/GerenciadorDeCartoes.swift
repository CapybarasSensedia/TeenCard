//
//  GerenciadorDeCartoes.swift
//  TeenCardProject
//
//  Created by Marcelo Martimiano Junior on 26/08/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import Foundation

class GerenciadorDeCartoes
{
    static var cartaoAtual: CartaoPrePago?
    static var meusCartoes = [CartaoPrePago]()
    
    static func getCartoesDoCliente() -> [CartaoPrePago]
    {
         self.meusCartoes = [CartaoPrePago]()
        meusCartoes.append(CartaoPrePago(proxy: "3713100018790", numeroDoCartao: "4213040011977072", nomeCompleto: "Vitor Schiavo", tipo: .TeenCardFilho, validade: "03/20"))
        meusCartoes.append(CartaoPrePago(proxy: "3713100018808", numeroDoCartao: "4213040011938918", nomeCompleto: "marcelo Silva", tipo: .MaisQuePresente, validade: "03/20"))
        meusCartoes.append(CartaoPrePago(proxy: "3713100018816", numeroDoCartao: "4213040011952828", nomeCompleto: "lucas Silva", tipo: .TeenCardFilho, validade: "03/20"))
        meusCartoes.append(CartaoPrePago(proxy: "3713100018824", numeroDoCartao: "4213040011964575", nomeCompleto: "filipe silva", tipo: .TeenCardFilho, validade: "03/20"))
        meusCartoes.append(CartaoPrePago(proxy: "3713100018832", numeroDoCartao: "4213040011990091", nomeCompleto: "clara silva", tipo: .MaisQuePresente, validade: "03/20"))
        
        return meusCartoes
    }
    
    static func setCartaoAtual(ordemCartao: Int)
    {
        self.cartaoAtual = self.meusCartoes[ordemCartao]
    }
}
