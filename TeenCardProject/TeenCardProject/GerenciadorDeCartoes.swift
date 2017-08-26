//
//  GerenciadorDeCartoes.swift
//  TeenCardProject
//
//  Created by Marcelo Martimiano Junior on 26/08/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class GerenciadorDeCartoes
{
    static func getCartoesDoCliente() -> [CartaoPrePago]
    {
        var meusCartoes = [CartaoPrePago]()
        meusCartoes.append(CartaoPrePago(proxy: "3713100018790", numeroDoCartao: "4213040011977072", nomeCompleto: "Vitor Schiavo", tipo: .TeenCardFilho))
        meusCartoes.append(CartaoPrePago(proxy: "3713100018808", numeroDoCartao: "4213040011938918", nomeCompleto: "marcelo Silva", tipo: .MaisQuePresente))
        meusCartoes.append(CartaoPrePago(proxy: "3713100018816", numeroDoCartao: "4213040011952828", nomeCompleto: "lucas Silva", tipo: .TeenCardFilho))
        meusCartoes.append(CartaoPrePago(proxy: "3713100018824", numeroDoCartao: "4213040011964575", nomeCompleto: "filipe silva", tipo: .TeenCardFilho))
        meusCartoes.append(CartaoPrePago(proxy: "3713100018832", numeroDoCartao: "4213040011990091", nomeCompleto: "clara silva", tipo: .MaisQuePresente))
        
        return meusCartoes
    }
}
