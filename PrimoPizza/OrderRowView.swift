//
//  OrderRowView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct OrderRowView: View {
    var order:Int
    var body: some View {
        VStack {
            HStack {
                Text("Your Order Item \(order)")
                Spacer()
            }
            HStack {
                Text("1 @")
                Text(19.90, format: .currency(code: "USD"))
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
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
        OrderRowView(order: 1)
    }
}
