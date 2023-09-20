//
//  OrderRowView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct OrderRowView: View {
    @Binding var order: OrderItem
    var body: some View {
        VStack {
            HStack {
                Text(order.item.name)
                Spacer()
            }
            HStack {
                Text(order.quantity, format: .number)
                Text(order.item.price, format: .currency(code: "USD"))
                Spacer()
                Text(order.extPrice, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
        .padding(10)
        .background(.regularMaterial)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: .constant(testOrderItem))
    }
}
