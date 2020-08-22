//
//  model.swift
//  Alamofire
//
//  Created by MahmoudRamadan on 8/20/20.
//

import Foundation

struct TotalData{
    let confirmed :Int
    let critical:Int
    let deaths :Int
    let recovered :Int
    
    var fatalityRate : Double{
        return 100.00 * Double(deaths)/Double(confirmed)
    }
    
    var recoveredRate : Double{
          return 100.00 * Double(recovered)/Double(confirmed)
    }
}

struct CountryData{
    let name:String
//    let confirmed :Int64
//    let critical:Int64
//    let deaths :Int64
//    let recovered :Int64
    let latitude : Double
    let longitude : Double
    
//    var fatalityRate : Double{
//        return 100.00 * Double(deaths)/Double(confirmed)
//    }
//
//    var recoveredRate : Double{
//          return 100.00 * Double(recovered)/Double(confirmed)
//    }
}

let testTotaldata = TotalData(confirmed: 200, critical: 20, deaths: 10, recovered: 10)
let testCountrydata = CountryData(name: "Egypt" , latitude:  31.2156, longitude: 29.9553)
