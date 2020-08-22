//
//  RecentView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/20/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    @ObservedObject var covidFetchRequest = CovideFetchRequest()
    @State var searchText = ""
    @State var isSearchVisible = false
    var body: some View {
        NavigationView{
            VStack{
                if isSearchVisible {
                    SearchTextView(searchText: $searchText)
                }
                TotalDataView(totalData: covidFetchRequest.totalData)
                ListHeaderView()
                List{
                    ForEach(covidFetchRequest.allCountries.filter{
                        self.searchText.isEmpty ? true :
                        $0.name.lowercased().contains(self.searchText.lowercased())
                    },id: \.name){
                        countryData in
                        NavigationLink(destination: CountryDetailView(countryData: countryData)){
                               ListRowView(countryData: countryData)
                        }
                   
                    }
                }
            }
            .navigationBarTitle("Recent Data" , displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                    self.isSearchVisible.toggle()
                    if !self.isSearchVisible {
                        self.searchText = ""
                    }
            }, label: {
                Image(systemName: "magnifyingglass")
             })
            )
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
}
