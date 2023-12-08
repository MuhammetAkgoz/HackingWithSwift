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
                    }
                }

                Section {
                    NavigationLink("Place Order") {
                        CheckoutView()
                    }
                }
            }.navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
