//
//  CurrenciesDataModel.swift
//  HttpGetExample
//
//  Created by fordlabs on 24/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

struct CurrenciesDataModel : Codable {
    
    let Code : String
    let Symbol : String
    let ThousandsSeparator : String
    let DecimalSeparator : String
    let SymbolOnLeft : Bool
    let SpaceBetweenAmountAndSymbol : Bool
    let RoundingCoefficient : Int
    let DecimalDigits : Int
    
}
