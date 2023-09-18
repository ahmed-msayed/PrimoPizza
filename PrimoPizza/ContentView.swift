//
//  ContentView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 15/09/2023.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4,5]
    var showOrders: Bool = true
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(20)
            } else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial)
                    .cornerRadius(15)
                MenuView()
            }
            Spacer()
        }
        .padding()
        .background(LinearGradient(colors: [.indigo, .cyan, .gray], startPoint: .top, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        // .preferredColorScheme(.dark)
    }
}


