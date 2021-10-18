//
//  Tip.swift
//  Trekr
//
//  Created by Miguel Garcia on 10/17/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
