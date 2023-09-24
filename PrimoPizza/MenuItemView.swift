//
//  MenuItemView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct MenuItemView: View {
    @State var addedItem: Bool = false
    @Binding var item: MenuItem
    @ObservedObject var orders: OrderModel
    @State var presentSheet: Bool = false
    @State private var newOrder: Bool = true
    @State private var order = noOrderItem
    
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading, 10)
                    .foregroundStyle(.ultraThickMaterial)
                
                if let image = UIImage(named: "\(item.id)_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding([.top, .bottom], 5)
                    
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .rotationEffect(.degrees(180))
                }
            }
            .background (.linearGradient (colors: [Color("Surf"), Color("Sky") .opacity (0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .cyan, radius: 5, x:8, y:8)
            
            VStack(alignment: .leading) {
                ScrollView {
                    Text(item.description)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            
            HStack {
                Button {
                    order = OrderItem(id: -999, item: item)
                    presentSheet = true
                } label: {
                    Text(item.price, format: .currency(code: "USD")).bold()
                    Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                }
                .disabled(item.id < 0)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.red, in: Capsule())
                .foregroundColor(.white)
                .sheet(isPresented: $presentSheet) {
                    addedItem = true
                } content: {
                    OrderDetailView(orderItem: $order, presentSheet: $presentSheet, newOrder: $newOrder)
                }
            }
            .padding(5)
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: .constant(testMenuItem), orders: OrderModel())
    }
}
