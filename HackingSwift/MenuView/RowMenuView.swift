//
//  RowMenuView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 6.12.2023.
//

import SwiftUI

struct RowMenuView: View {

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
                            ItemRow(item: item)
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

    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price.description)")
            }

        }
    }
}


#Preview {
    RowMenuView()
}
