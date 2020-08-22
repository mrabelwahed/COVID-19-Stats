//
//  MapView.swift
//  CoronaStats
//
//  Created by MahmoudRamadan on 8/21/20.
//  Copyright © 2020 MahmoudRamadan. All rights reserved.
//

import SwiftUI
import UIKit
import MapKit

struct MapView : UIViewRepresentable {
   
    
    @Binding
    var countryData :[CountryData]
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        var allAnnotations  : [CoronaCaseAnnotation] = []
        
        for data in countryData {
            let name = data.name
            let loc = CLLocationCoordinate2D(latitude: data.latitude, longitude: data.longitude)
            let coroncaseAnnotation = CoronaCaseAnnotation(title: name, coordinate: loc)
           allAnnotations.append(coroncaseAnnotation)
        }
        uiView.annotations.forEach{uiView.removeAnnotation($0)}
        uiView.addAnnotations(allAnnotations)
    }
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView()
    }
}

class CoronaCaseAnnotation: NSObject , MKAnnotation {
    let title : String?
    let coordinate: CLLocationCoordinate2D
    
     init(title : String? , coordinate : CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}
