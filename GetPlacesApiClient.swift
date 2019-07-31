//
//  GetPlacesApiClient.swift
//  HttpGetExample
//
//  Created by fordlabs on 25/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

import Foundation

class GetPlacesApiClient {
    
    func getPlaces(completionhandler: @escaping(_ dataresponse : CountriesDataModel) -> ()) {
        
        
        let  country =  "IND"
        let  currency = "INR"
        let  locale  = "en-US"
        
    let urlWithParams =   "https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/autosuggest/v1.0/\(country)/\(currency)/\(locale)/?query=India"
        
        guard let url = URL(string: urlWithParams) else
        {
            print("some error")
            return
            
        }
        
        let passingHeader = ["X-RapidAPI-Host" : "skyscanner-skyscanner-flight-search-v1.p.rapidapi.com","X-RapidAPI-Key" : "7db98fc155msh70f2cbda0054ec8p197bccjsn87dbf2132baa"]
        
        var urlrequest = URLRequest(url: url)
        urlrequest.allHTTPHeaderFields = passingHeader
        urlrequest.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: urlrequest) {(data,resp,err) in
            
            if let error = err {
                
                print(error.localizedDescription)
            }
            
            guard let rawdata = data else {return}
            
            do {
                
                print(rawdata)
                let resp:CountriesDataModel = try! JSONDecoder().decode(CountriesDataModel.self, from: rawdata)
                completionhandler(resp)
            }
                
            catch (let error) {
                
                print(error)
                
            }
            
            
            }.resume()
        
    
        
    }
    
    
}
