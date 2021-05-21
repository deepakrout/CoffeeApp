//
//  CoffeeService.swift
//  CoffeeApp
//
//  Created by Deepak Rout on 5/20/21.
//

import Foundation

class CoffeeService {
    func getAllOrder( completion: @escaping ([Order]?)-> Void) {
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else {
            print("Unable to create a URL")
            DispatchQueue.main.async {
                completion(nil)
            }
            return
        }
        
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            
            guard let validData = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let orders = try? JSONDecoder().decode([Order].self, from: validData)
            DispatchQueue.main.async {
                completion(orders)
            }
            
            
        }.resume()
        
    }
}
