//
//  ContentView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 15/09/2023.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4,5]
    @State private var showOrders: Bool = false
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            
            Button {
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
            }
            .font(.title)
            .foregroundColor(.black)
            .background(Color.gray)
            
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


