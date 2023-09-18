//
//  OrderView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int]
    var body: some View {
        VStack {
            Label{
                Text(59.99, format: .currency(code: "USD"))
            } icon:{
                Image(systemName: orders.isEmpty ? "cart" : "cart.fill")
            }
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView {
                ForEach(orders, id:\.self) { order in
                    OrderRowView(order: order)
                }
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: [1])
    }
}
