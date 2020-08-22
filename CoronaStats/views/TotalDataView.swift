//
//  TotalDataView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/21/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    var totalData : TotalData
    
    var body: some View {
        VStack{
            HStack{
                TotalDataCard(name: "Confirmed", number: totalData.confirmed.formatNumber())
                TotalDataCard(name: "Critical", color: .yellow, number: totalData.critical.formatNumber())
                TotalDataCard(name: "Deaths", color: .red, number: totalData.deaths.formatNumber())
            }
            HStack{
                TotalDataCard(name: "Confirmed", number: totalData.confirmed.formatNumber())
                TotalDataCard(name: "Recovery %", color: .green, number: String(format: "%.2f", totalData.recoveredRate))
                TotalDataCard(name: "Deaths %", color: .red, number: String(format: "%.2f", totalData.fatalityRate))
                      }
        }.frame(height:170)
        .padding(10)
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData : testTotaldata)
    }
}
