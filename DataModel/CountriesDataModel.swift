//
//  CountriesDataModel.swift
//  HttpGetExample
//
//  Created by fordlabs on 25/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

struct CountriesDataModel : Codable {
    
    let Places : [Places]?
    
}

struct Places:Codable {
    
    let PlaceId : String
    let CityId : String
    let CountryName : String
    let PlaceName : String
    let CountryId : String
    let RegionId : String
}
