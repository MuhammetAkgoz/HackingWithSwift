//
//  ItemDetailView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 7.12.2023.
//

import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var order: Order
    let item: MenuItem

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Created By: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .foregroundStyle(.white)
                    .font(.caption)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Button("Order This") {
                order.add(item: item)
            }.buttonStyle(.borderedProminent)
        }.navigationTitle(item.name)
    }
}

#Preview {
    NavigationStack {
        ItemDetailView(item: MenuItem.example).environmentObject(Order())
    }
}
