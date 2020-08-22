//
//  ListHeaderView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/20/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    var body: some View {
        HStack{
            Text("country")
                .fontWeight(.bold)
                .font(.subheadline)
                .padding(.leading,15)
                .frame(width: 110,  alignment: .leading)
            
            Spacer()
            
            Text("Conf.")
                           .fontWeight(.bold)
                           .font(.subheadline)
                           .padding(.leading,15)
                           .frame(height: 40)
                Spacer()
            
            Text("Death")
                           .fontWeight(.bold)
                           .font(.subheadline)
                           .padding(.leading,15)
                           .frame(height: 40)
                Spacer()
            
            Text("Recover")
                                   .fontWeight(.bold)
                                   .font(.subheadline)
                                   .padding(.trailing,15)
                                   .frame(height: 40)
        }.background(Color.gray)
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
