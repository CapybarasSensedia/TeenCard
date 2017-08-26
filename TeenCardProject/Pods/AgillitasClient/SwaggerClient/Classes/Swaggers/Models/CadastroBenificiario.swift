//
// CadastroBenificiario.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CadastroBenificiario: JSONEncodable {
    /** número identificador referente ao proxy do cartão origem de transferência. */
    public var idCartao: String?
    /** número identificador referente ao proxy do cartão destino de transferência. */
    public var idCartaoDestino: String?
    /** Nome completo do beneficiário da transferência. */
    public var nome: String?
    /** Numero do cadastro de pessoas física do beneficiário da transferência.  Não deve conter pontos ou hífen. */
    public var cpf: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idCartaoDestino"] = self.idCartaoDestino
        nillableDictionary["nome"] = self.nome
        nillableDictionary["cpf"] = self.cpf
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
