//
//  HeaderView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("pizza-logo")
                .resizable()
                .scaledToFit()
            Text("Primo Pizza")
                .underline()
                .background()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
