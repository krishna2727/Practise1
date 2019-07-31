//
//  FlightsViewController
//  HttpGetExample
//
//  Created by fordlabs on 24/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

import UIKit

class FlightsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UIPickerViewDelegate,UIPickerViewDataSource {
   
    @IBOutlet weak var originCIty: UITextField!
    @IBOutlet weak var destinationCIty: UITextField!
    @IBOutlet weak var dataTableView: UITableView!
    @IBOutlet weak var originPickerView: UIPickerView!
    @IBOutlet weak var DestPickerVIew: UIPickerView!
    var place: [PlacesDataModel] = []
    var carriers: [CarriersDataModel] = []
    var countriesList : [Places] = []
    var quotesList : [QuotesResponseModel] = []
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        GetPlacesApiClient().getPlaces { (responce) in
            print("results data",responce)
            
            DispatchQueue.main.sync {
                
                self.countriesList = responce.Places!
                self.originPickerView.reloadAllComponents()
                self.DestPickerVIew.reloadAllComponents()
                
                
            }
            
        }
        
    
        dataTableView.isHidden = true
        
       
     
    }
    
    @IBAction func FlightSearch(_ sender: Any) {
        
        GetAPIClient().some(originCountry: originCIty.text ?? " ", destinationCountry: destinationCIty.text ?? " " , completionhandler: { (response) in
            
            DispatchQueue.main.sync {
                
                self.place = response.Places
                self.carriers = response.Carriers
                self.quotesList = response.Quotes
                print(self.place.count)
                self.dataTableView.isHidden = false
                self.dataTableView.reloadData()
                
            }
        })
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carriers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell  = tableView.dequeueReusableCell(withIdentifier: "cellidentifier") as? UserDataTableViewCell
      
        
        let dtObj = self.carriers[indexPath.row]
        
        cell?.airlinesLabel.text = "AirlinesName: \(dtObj.Name)"
        cell?.airlinesId.text = "AirlinesId: \(dtObj.CarrierId)"

        return cell!
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return countriesList.count
    
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countriesList[row].CityId
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == originPickerView {
        originCIty.text = countriesList[row].CityId
        }
        else {
            destinationCIty.text = countriesList[row].CityId
        }
    }
}

