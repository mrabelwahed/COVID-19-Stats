//
//  CovidFetchRequest.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/20/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
 
class CovideFetchRequest : ObservableObject{
    @Published var totalData = testTotaldata
    @Published var allCountries :[CountryData] = []
    init() {
       //getCurrentTotals()
       getAllCountries()
    }
    
    func getCurrentTotals(){
        let headers : HTTPHeaders = [
            "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
            "x-rapidapi-key": "YOUR_API_KEY"
        ]
      
        let url = "https://covid-19-data.p.rapidapi.com/totals?format=json"
        
        AF.request(url,headers: headers).responseJSON{
            response in
           
            let result = response.data
            if result != nil {
                 let json = JSON(result!)
                 let confirmed = json[0]["confirmed"].intValue
                 let deaths = json[0]["deaths"].intValue
                 let critical = json[0]["critical"].intValue
                 let recovered = json[0]["recovered"].intValue
                
                self.totalData  = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
            }else{
                self.totalData = testTotaldata
            }
           
        }
      
    }
    
    
    func getAllCountries(){
        let headers : HTTPHeaders = [
            "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
            "x-rapidapi-key": "YOUR_API_KEY"
        ]
   
        let url = "https://covid-19-data.p.rapidapi.com/help/countries"
        
        AF.request(url,headers: headers).responseJSON{
            response in
           
            let result = response.value
            //print(result)
            
            if result != nil {
                let dataDictionary = result as! [Dictionary<String, AnyObject>]
                for countryData in dataDictionary {
                    let country = countryData["name"] as? String ?? "Error"
                    let latitude = countryData["latitude"] as? Double ?? 0.0
                    let longitude = countryData["longitude"] as? Double ?? 0.0
                    
                    let countryObj = CountryData(name: country, latitude: latitude, longitude: longitude)
                    self.allCountries.append(countryObj)
                }
            }else{

            }
            
           
        }
      
    }
}
