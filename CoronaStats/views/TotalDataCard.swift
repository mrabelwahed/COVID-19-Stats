//
//  TotalDataCard.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/21/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct TotalDataCard: View {
    var name:String = "Confirmed"
    var color:Color = .primary
    var number:String = "Error"
    
    var body: some View {
        GeometryReader{
            geometry in
            VStack{
                Text(self.number)
                    .font(.subheadline)
                    .foregroundColor(self.color)
                    .padding(5)
                
                Text(self.name)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
                
            }.frame(width: geometry.size.width, height: 80, alignment: .center)
                .background(Color("cardBackgroundGray"))
                .cornerRadius(8.0)
        }
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
