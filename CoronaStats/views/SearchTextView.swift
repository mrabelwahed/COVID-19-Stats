//
//  SearchTextView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/21/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct SearchTextView: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack{
            TextField("Country...", text: $searchText)
        }.frame(height: 50)
        .padding()
        .background(Color("cardBackgroundGray"))
    }
}



