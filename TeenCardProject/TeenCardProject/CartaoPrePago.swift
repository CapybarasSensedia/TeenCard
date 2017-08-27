//
//  CartaoPrePago.swift
//  TeenCardProject
//
//  Created by Marcelo Martimiano Junior on 26/08/17.
//  Copyright © 2017 Marcelo Martimiano Junior. All rights reserved.
//

import UIKit

class CartaoPrePago
{
    static var cartaoAtual: CartaoPrePago?
    var proxy: String
    var numeroDoCartao: String
    var nomeCompleto: String
    var tipo: TipoDoCartao
    var validade: String
    
    init(proxy: String, numeroDoCartao: String, nomeCompleto: String, tipo: TipoDoCartao, validade: String)
    {
        self.proxy = proxy
        self.nomeCompleto = nomeCompleto
        self.numeroDoCartao = numeroDoCartao
        self.tipo = tipo
        self.validade = validade
    }
    
    enum TipoDoCartao {
        case TeenCardPai, TeenCardFilho, InternacionalAliExpress, MaisQuePresente, MundoLivre, AgillitasCorporativo
    }
}
