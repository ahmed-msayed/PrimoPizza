//
//  ContentView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 15/09/2023.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4,5]
    var body: some View {
        VStack {
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        // .preferredColorScheme(.dark)
    }
}


