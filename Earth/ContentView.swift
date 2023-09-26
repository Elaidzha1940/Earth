//  /*
//
//  Projcet: Earth
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.09.2023
//
//  */

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var place: MKCoordinateRegion =
    MKCoordinateRegion(center:
                        CLLocationCoordinate2D(
                            latitude: -13.163068,
                            longitude: -72.545128),
                       span:
                        MKCoordinateSpan(
                            latitudeDelta: 0.2,
                            longitudeDelta: 0.2))
    
    var body: some View {
        
        ZStack {
            Map(coordinateRegion: $place)
                .ignoresSafeArea()
            
            Image("me")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(40)
                .background(
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white.opacity(0.5))
                )
        }
    }
}

#Preview {
    ContentView()
}
