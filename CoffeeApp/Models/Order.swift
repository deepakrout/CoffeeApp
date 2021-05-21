//
//  Order.swift
//  CoffeeApp
//
//  Created by Deepak Rout on 5/20/21.
//

import Foundation

struct Order: Codable {
    let name: String
    let coffeeName: String
    let total: Double
    let size: String
}
