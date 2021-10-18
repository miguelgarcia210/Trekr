//
//  TrekrApp.swift
//  Trekr
//
//  Created by Miguel Garcia on 10/14/21.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "globe")
                    Text("World")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
