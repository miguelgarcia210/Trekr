//
//  TipsView.swift
//  Trekr
//
//  Created by Miguel Garcia on 10/17/21.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")! // check if file exists
        let data = try! Data(contentsOf: url) // set contents of that file as data
        tips = try! JSONDecoder().decode([Tip].self, from: data) // decode the data
    }
    
    var body: some View {
        List(tips, id: \.text, children: \.children) {
            tip in
            if (tip.children != nil) {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
