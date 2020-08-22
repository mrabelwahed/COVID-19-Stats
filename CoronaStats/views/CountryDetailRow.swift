//
//  CountryDetailView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/21/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct CountryDetailRow: View {
    var name:String = "Confirmed"
    var color:Color = .primary
    var number:String = "Error"
    
    var body: some View {
        VStack{
            HStack{
                Text(name).font(.body).padding(5)
                Spacer()
                Text(number).font(.subheadline).padding(5)
            }
            Divider()
        
        }.padding(.leading)
            .padding(.trailing)
    }
}

struct CountryDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailRow()
    }
}
