//
//  Locations.swift
//  Trekr
//
//  Created by Miguel Garcia on 10/16/21.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")! // check if file exists
        let data = try! Data(contentsOf: url) // set contents of that file as data
        places = try! JSONDecoder().decode([Location].self, from: data) // decode the data
    }
}
