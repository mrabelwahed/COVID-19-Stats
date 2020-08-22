//
//  ContentView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/20/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
        TabView{
            RecentView().tabItem{ Tab(imageName: "chart.bar", text: "Recent")}.tag(0)
           // MapViewContainer().tabItem{ Tab(imageName: "map", text: "Maps")}.tag(1)
        }
    
    }
    
}

private struct Tab : View {
    let imageName : String
    let text: String
    
    var body: some View{
        VStack{
            Image(systemName: imageName)
            Text(text)
        }
    }
}



