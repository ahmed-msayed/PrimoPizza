//
//  MenuItemView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 16/09/2023.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Margherita Primo Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading, 10)
                    .foregroundStyle(.ultraThickMaterial)

                if let image = UIImage(named: "0_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding([.top, .bottom], 5)
                        
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .rotationEffect(.degrees(180))
                }
            }
            .background (.linearGradient (colors: [Color("Surf"), Color("Sky") .opacity (0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .cyan, radius: 5, x:8, y:8)
            
            VStack(alignment: .leading) {
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id nisl lorem. Morbi convallis ex non velit condimentum consectetur. Nulla facilisi. Suspendisse scelerisque, elit fermentum facilisis gravida, turpis metus tincidunt purus, sit amet iaculis magna lacus eget risus. Proin at orci id felis euismod auctor non non ipsum. Suspendisse sollicitudin.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
