//
//  ContentView.swift
//  Trekr
//
//  Created by Miguel Garcia on 10/14/21.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.top)
                .padding(.horizontal)
            
            Text("Did You Know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.top)
                .padding(.horizontal)
            
            
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location: Location.example)
        }
    }
}
