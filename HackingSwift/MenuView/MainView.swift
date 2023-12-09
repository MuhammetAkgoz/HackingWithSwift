//
//  MainView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 7.12.2023.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var order : Order
    
    var body: some View {
        TabView {
            RowMenuView()
                .tabItem { Label("Menu", systemImage: "list.dash") }
                .environmentObject(order)
            OrderView()
                .tabItem { Label("Order", systemImage: "square.and.pencil") }
                .environmentObject(order)
            FavoriteView()
                .tabItem { Label("Favorite", systemImage: "suit.heart") }
            
        }
    }
}

#Preview {
    MainView().environmentObject(Order())
}
