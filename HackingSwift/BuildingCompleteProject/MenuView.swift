//
//  MenuView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 6.12.2023.
//

import SwiftUI

struct MenuView: View {
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
                            Text(item.name)
                        }
                    }
                }

            }.navigationTitle("Menu")
                .listStyle(.grouped)
        }
    }
}

#Preview {
    MenuView()
}
