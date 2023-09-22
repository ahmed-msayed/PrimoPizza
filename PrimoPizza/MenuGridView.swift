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
    let favColumnLayout = Array(repeating: GridItem(), count: 5)
    @State private var favPizzaId: [Int] = [-1]
    
    func menu(id: Int) -> MenuItem {
        menu.first(where: {$0.id == id}) ?? noMenuItem
    }
    
    var body: some View {
        VStack {
            Text("Favorites").font(.title)
            LazyVGrid(columns: favColumnLayout) {
                ForEach(favPizzaId.sorted(), id:\.self) { item in
                    FavoriteTileView(menuItem: menu(id: item))
                        .onLongPressGesture {
                            if let index = favPizzaId.firstIndex(where: {$0 == item}) {
                                favPizzaId.remove(at: index)
                            }
                        }
                }
            }
            .padding()
            
            Text("Pizzas").font(.title)
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu) { item in
                        //if it is not in favorites, display it
                        if !favPizzaId.contains(item.id) {
                            MenuItemTileView(menuItem: item)
                                .onTapGesture(count: 2) {
                                    if !favPizzaId.contains(item.id) { //??
                                        favPizzaId.append(item.id)
                                    }
                                }
                                .onTapGesture {
                                    selectedItem = item
                                }
                                .onLongPressGesture {
                                    selectedItem = noMenuItem
                                }
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
