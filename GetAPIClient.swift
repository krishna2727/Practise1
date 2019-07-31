//
//  GetAPIClient.swift
//  HttpGetExample
//
//  Created by fordlabs on 24/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

import Foundation

class GetAPIClient {
    
    func some(originCountry : String , destinationCountry : String, completionhandler : @escaping(_ dataResponse :GetRoutesResponse) -> ()) {
        
     let country = "US"
     let currency = "INR"
     let locale = "en-US"
//        var originplace = "SFO-sky"
//        var destinationplace = "ORD-sky"
        let  outboundpartialdate = "2019-09-01"
        
        let urlWithParam = "https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/browseroutes/v1.0/\(country)/\(currency)/\(locale)/\(originCountry)/\(destinationCountry)/\(outboundpartialdate)"
        
      guard let myurl = URL(string: urlWithParam) else
        {
            print("some error")
            return
            
        }
     
        
        let headers = ["X-RapidAPI-Host" : "skyscanner-skyscanner-flight-search-v1.p.rapidapi.com","X-RapidAPI-Key" : "7db98fc155msh70f2cbda0054ec8p197bccjsn87dbf2132baa"]

        var urlrequest = URLRequest(url: myurl)
        urlrequest.allHTTPHeaderFields = headers
        urlrequest.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: urlrequest) {(data,resp,err) in
            
            if let error = err {
                
                print(error.localizedDescription)
            }
            
            guard let rawdata = data else {return}
            
            do {
                
                let resp:GetRoutesResponse = try! JSONDecoder().decode(GetRoutesResponse.self, from: rawdata)
                completionhandler(resp)
                
                
            }
            
            catch (let error) {
                
                print(error)
                
            }
            
            
        }.resume()
        
       
    }
    

}
