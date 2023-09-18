//
//  RatingsView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 17/09/2023.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    var body: some View {
        HStack {
            ForEach(1...5, id:\.self) { circle in
                Image(systemName: circle <= rating ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(rating: 3)
    }
}
