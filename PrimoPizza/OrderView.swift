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

            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
                Label{
                    Text(59.99, format: .currency(code: "USD"))
                        .fontWeight(.bold)
                } icon:{
                    Image(systemName: orders.isEmpty ? "cart" : "cart.fill")
                }
            }
            .padding([.top, .bottom], 15)
            .padding([.leading, .trailing], 10)
            .background(Color.mint)
            .cornerRadius(5)
            
            ScrollView {
                ForEach(orders, id:\.self) { order in
                    OrderRowView(order: order)
                        .padding([.bottom, .top], 5)
                        .padding([.leading, .trailing], 7)
                }
            }
            .padding(.top, 5)
        }
        .padding()
        .background(Color("Sky"))
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: [1,2,3,4,5])
    }
}
