//
//  FavoriteView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 9.12.2023.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationStack {
            List {
                ForEach(order.favorties, id: \.self) { item in
                    Text(item.name)
                }
            }
                .navigationTitle("Favorite")
                .navigationBarTitleDisplayMode(.inline)
                .listStyle(.insetGrouped)
        }
    }
}

#Preview {
    FavoriteView().environmentObject(Order())
}
