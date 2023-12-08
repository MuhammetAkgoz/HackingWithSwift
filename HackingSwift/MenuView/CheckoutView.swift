//
//  CheckoutView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 8.12.2023.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order

    let paymentTypes: [String] = ["Cash", "Credit Card", "iDine Points"]
    let tipAmounts = [10, 15, 20, 25, 0]

    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var paymentType: String = "Cash"
    @State private var tipAmount = 15


    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) { item in
                        Text(item.description)
                    }
                }.pickerStyle(.navigationLink)
                Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails)
                if addLoyaltyDetails {
                    TextField("Enter your iDine ID", text: $loyaltyNumber)
                }
            }


            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }.pickerStyle(.segmented)
            }

            Section("Total: $100") {
                Button("Confirm order") {
                    // place the order
                }
            }
        }.navigationTitle("Payment")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CheckoutView().environmentObject(Order())
    }
}
