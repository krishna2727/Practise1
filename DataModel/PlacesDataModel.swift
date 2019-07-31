//
//  PlacesDataModel.swift
//  HttpGetExample
//
//  Created by fordlabs on 24/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

struct PlacesDataModel : Codable {
    
    let PlaceId : Int
    let IataCode : String
    let Name : String
    let SkyscannerCode : String
    let CityName : String
    let CityId : String
    let CountryName : String
}
