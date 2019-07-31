//
//  GetRoutes.swift
//  HttpGetExample
//
//  Created by fordlabs on 24/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

struct GetRoutesResponse: Codable {
    
    var Routes : [String]?
    let Quotes : [QuotesResponseModel]
    let Places : [PlacesDataModel]
    let Carriers : [CarriersDataModel]
    let Currencies : [CurrenciesDataModel]
    
}
