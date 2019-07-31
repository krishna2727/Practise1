//
//  OutBoundDataModel.swift
//  HttpGetExample
//
//  Created by fordlabs on 24/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

struct OutBoundDataModel : Codable {
    
    let OriginId : Int
    let DestinationId : Int
    let DepartureDate : String
    let carrierIds : [Int]
}
