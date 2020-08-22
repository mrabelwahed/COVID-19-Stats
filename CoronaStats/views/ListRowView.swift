//
//  ListRowView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/20/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct ListRowView: View {
    let countryData: CountryData
    var body: some View {
          HStack{
            Text(countryData.name)
                     .fontWeight(.bold)
                     .font(.subheadline)
                     .lineLimit(2)
                     .padding(.leading,15)
                     .frame(width: 110,  alignment: .leading)
                 
                 Spacer()
                 
            Text(2000.formatNumber())
                                .fontWeight(.bold)
                                .font(.subheadline)
                                .padding(.leading,15)
                                .frame(height: 40)
                     Spacer()
                 
            Text(200.formatNumber())
                              
                                .frame(width: 50, height: 40, alignment: .center)
                                .font(.subheadline)
                                . foregroundColor(.red)
                                .padding(.leading,15)
                             
                     Spacer()
                 
            Text(10.formatNumber())
                        .frame(width: 50, height: 40, alignment: .center)
                            .font(.subheadline)
                            .foregroundColor(.green)
                            .padding(.trailing,15)
             }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(countryData: testCountrydata)
    }
}
