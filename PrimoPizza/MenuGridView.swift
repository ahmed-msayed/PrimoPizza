//
//  MenuGridView.swift
//  PrimoPizza
//
//  Created by Ahmed Sayed on 22/09/2023.
//

import SwiftUI

struct MenuGridView: View {
    var menu: [MenuItem]
    @State var selectedItem: MenuItem = noMenuItem
    let columnLayout = Array(repeating: GridItem(spacing: 40), count: 3)
    
    var body: some View {
        VStack {
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu) { item in
                        MenuItemTileView(menuItem: item)
                            .onTapGesture {
                                selectedItem = item
                            }
                            .onLongPressGesture {
                                selectedItem = noMenuItem
                            }
                    }
                }
                .padding()
            }
        }
    }
}

struct MenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        MenuGridView(menu: MenuModel().menu)
    }
}
