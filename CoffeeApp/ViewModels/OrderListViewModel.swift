//
//  OrderListViewModel.swift
//  CoffeeApp
//
//  Created by Deepak Rout on 5/20/21.
//

import Foundation

class OrderListViewModel: ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    
    init() {
        fetchOrders()
    }
    
    func fetchOrders() {
        CoffeeService().getAllOrder { orders in
            if let orders = orders {
                self.orders = orders.map(OrderViewModel.init)
            }
        }
    }
    
}

class OrderViewModel {
    var order: Order
    
    let id = UUID()
    
    init(order: Order) {
        self.order = order
    }
    
    var name: String {
        return self.order.name
    }
    
    var size: String {
        return self.order.size
    }
    
    var coffeeName: String {
        return self.order.coffeeName
    }
    
    var total: Double {
        return self.order.total
    }
}
