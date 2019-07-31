//
//  QuotesResponseModel.swift
//  HttpGetExample
//
//  Created by fordlabs on 24/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

struct QuotesResponseModel : Codable {
    
    let QuoteId : Int?
    let MinPrice : Int?
    let Direct : Bool
    let outBound : OutBoundDataModel?
    let QuoteDateTime : String?
    
}
