//
//  OrderView.swift
//  CoffeeApp
//
//  Created by Deepak Rout on 5/21/21.
//

import SwiftUI

struct OrderListView: View {
    
    let orders: [OrderViewModel]
    
    init(orders: [OrderViewModel]) {
        self.orders = orders
    }
    
    var body: some View {
        List {
            ForEach(self.orders, id:\.id) {
                order in
                HStack {
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .cornerRadius(16)
                    VStack {
                        Text(order.name)
                            .font(.title)
                            .padding([.leading,.bottom],10)
                        HStack {
                            Text(order.coffeeName)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                            Text(order.size)
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                                .background(Color.white)
                                .foregroundColor(Color.gray)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders:   [OrderViewModel(order: Order(name: "Mary", coffeeName: "Espresso", total: 3.29, size: "Tall"))])
    }
}
