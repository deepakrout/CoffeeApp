//
//  Coffee.swift
//  CoffeeApp
//
//  Created by Deepak Rout on 5/20/21.
//

import Foundation


struct Coffee {
    let name: String
    let imageURL: String
    let price: Double
}

extension Coffee {
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Cappuccino", imageURL: "Cappuccino", price: 2.9),
            Coffee(name: "Espresso", imageURL: "Espresso", price: 3.9),
            Coffee(name: "Regular", imageURL: "Regular", price: 2.1)
        ]
    }
}
