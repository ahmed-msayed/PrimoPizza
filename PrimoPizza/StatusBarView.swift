//
//  StatusBarView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 22/09/2023.
//

import SwiftUI

struct StatusBarView: View {
    @EnvironmentObject var orders: OrderModel
    @Binding var showOrders: Bool
    @Binding var showGridListButton: Bool
    
    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) orders")
                .frame(maxWidth: 120)
                .lineLimit(1)
                .minimumScaleFactor(0.15)
            Spacer()
            
            Button {
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
            }
            if !showOrders {
                Button {
                    showGridListButton.toggle()
                } label: {
                    Image(systemName: showGridListButton ? "list.bullet" : "square.grid.3x2")
                }
                .padding(.leading, 5)
            }
            Spacer()
            
            Label{
                Text(orders.orderTotal, format: .currency(code: "USD"))
                    .fontWeight(.bold)
            } icon:{
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.fill")
            }
            .frame(maxWidth: 120)
            .lineLimit(1)
            .minimumScaleFactor(0.15)
        }
        .font(.title)
        .foregroundColor(.white)
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView(showOrders: .constant(false), showGridListButton: .constant(false))
            .environmentObject(OrderModel())
            .background(Color.gray)
    }
}
