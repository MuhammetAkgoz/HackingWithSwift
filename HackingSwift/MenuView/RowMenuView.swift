//
//  RowMenuView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 6.12.2023.
//

import SwiftUI

struct RowMenuView: View {

    private let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    private let menu: [MenuSection]

    init() {
        menu = Bundle.main.decode ([MenuSection].self, from: "menu.json")
    }


    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            ItemRow(item: item, colors: colors)
                        }
                    }
                }

            }.navigationTitle("Menu")
                .listStyle(.grouped)
        }
    }
}


private struct ItemRow: View {
    let item: MenuItem
    let colors: [String: Color]

    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(.capsule)
                .overlay(Circle().stroke(.orange, lineWidth: 2.0))
            VStack(alignment: .leading) {
                Text(item.name)
                HStack {
                    Text("$\(item.price.description)")
                    Spacer()
                    ForEach(item.restrictions, id: \.self) { restriction in
                        Text(restriction)
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(5)
                            .background(colors[restriction, default: .red])
                            .clipShape(.circle)
                            .foregroundStyle(.white)
                    }
                }
            }

        }
    }
}


#Preview {
    RowMenuView()
}
