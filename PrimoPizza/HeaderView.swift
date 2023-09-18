//
//  HeaderView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("pizza-banner")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
            Text("Primo Pizza")
                .font(.custom("Georgia", size: 22, relativeTo: .title))
                .padding(.trailing, 55)
                .padding(.bottom, 15)
                .foregroundColor(.white)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
