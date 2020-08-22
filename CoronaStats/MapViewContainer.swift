//
//  MapViewContainer.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/22/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct MapViewContainer: View {
    @ObservedObject var covidFetchRequest =  CovideFetchRequest()
    
    var body: some View {
        MapView(countryData: $covidFetchRequest.allCountries)
    }
}

struct MapViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        MapViewContainer()
    }
}
