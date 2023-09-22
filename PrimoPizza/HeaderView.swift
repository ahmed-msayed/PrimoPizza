//
//  HeaderView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct HeaderView: View {
    //to adjust header for landscape view
    @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        VStack {
            if (vSizeClass ?? .regular) != .compact {
                ZStack(alignment: .bottomTrailing) {
                    Image("pizza-banner")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                    Text("Primo Pizza")
                        .font(.custom("Georgia", size: 22, relativeTo: .title))
                        .padding(.trailing, 50)
                        .padding(.bottom, 15)
                        .foregroundStyle(.regularMaterial)
                        .fontWeight(.semibold)
                }
            } else {
                HStack(alignment: .center) {
                    Image("pizza-banner")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                    Text("Primo Pizza")
                        .font(.custom("Georgia", size: 22, relativeTo: .title))
                        .foregroundColor(.white)
                        .background(.gray)
                        .fontWeight(.heavy)
                }
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
