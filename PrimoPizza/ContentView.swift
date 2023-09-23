//
//  ContentView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 15/09/2023.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @StateObject var orders: OrderModel = OrderModel()
    @State private var showOrders: Bool = false
    @State private var selectedItem: MenuItem = noMenuItem
    @State private var showGridListButton: Bool = true
    
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
                //override light/dark modes output
                .environment(\.colorScheme, .light)
            
            StatusBarView(showOrders: $showOrders, showGridListButton: $showGridListButton)

            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(20)
            } else {
                MenuItemView(item: $selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial)
                    .cornerRadius(15)
                if showGridListButton {
                    MenuView(menu: menu, selectedItem: $selectedItem)
                        .cornerRadius(20)
                } else {
                    ScrollView {
                        MenuGridView(menu: menu, selectedItem: $selectedItem)
                    }
                }
            }
            Spacer()
        }
        .environmentObject(orders)
        .padding()
        .background(LinearGradient(colors: [.indigo, .cyan, .gray], startPoint: .top, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu: MenuModel().menu)
        // .preferredColorScheme(.dark)
    }
}


