//
//  OrderView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orders: OrderModel
    @State var presentDeleteAlert: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Order List")
                    .font(.title)
                Spacer()
            }
            .padding([.top, .bottom], 15)
            .padding([.leading, .trailing], 10)
            .background(Color.mint)
            .cornerRadius(5)
            
            ScrollView {
                ForEach($orders.orderItems) { order in
                    OrderRowView(order: order)
                        .padding([.bottom, .top], 5)
                        .padding([.leading, .trailing], 7)
                }
            }
            .padding(.top, 5)
            
            Button("Delete Order") {
                if !orders.orderItems.isEmpty {
                    presentDeleteAlert = true
                }
            }
            .padding(10)
            .background(.regularMaterial, in:Capsule())
            .padding(7)
            .alert("Delete Order ?", isPresented: $presentDeleteAlert) {
                Button("Yes") {
                    if !orders.orderItems.isEmpty { orders.removeLast() }
                }
                Button("No", role: .cancel){}
            }
        }
        .padding()
        .background(Color("Sky"))
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: OrderModel())
    }
}
