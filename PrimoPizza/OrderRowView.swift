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
        HStack {
            Text("Your Order Item \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "USD"))
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
