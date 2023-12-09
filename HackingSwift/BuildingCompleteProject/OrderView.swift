//
//  OrderView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 7.12.2023.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }.onDelete(perform: deleteItems)
                }

                Section {
                    NavigationLink("Place Order") {
                        CheckoutView()
                    }
                }.disabled(order.items.isEmpty)
            }.navigationTitle("Order")
                .toolbar {
                EditButton()
            }
        }
    }

    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
