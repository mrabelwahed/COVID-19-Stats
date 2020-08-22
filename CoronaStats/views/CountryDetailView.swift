//
//  CountryDetailView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/21/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct CountryDetailView: View {
    var countryData:CountryData
    
    var body: some View {
        VStack{
            VStack{
                CountryDetailRow(name: "Confirmed",  number: 20000.formatNumber()).padding(.top)
                      CountryDetailRow(name: "Deaths", color: .red, number: 1390.formatNumber())
                      CountryDetailRow(name: "Recovery", color: .green, number: 100.formatNumber())
                  }.background(Color("cardBackgroundGray"))
                  .cornerRadius(8)
                  .padding()
            Spacer()
        }.padding(.top,50)
            .navigationBarTitle(countryData.name)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountrydata)
    }
}
