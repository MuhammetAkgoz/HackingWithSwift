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
    let times: [String] = ["Now", "Tonight", "Tomorrow Morning"]
    let tipAmounts = [10, 15, 20, 25, 0]

    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var paymentType: String = "Cash"
    @State private var time: String = "Now"
    @State private var tipAmount = 15
    @State private var showingPaymentAlert = false


    var totalPrice: String {
        let total = Double(order.total)
        let tipValue = total / 100 * Double(tipAmount)
        return (total + tipValue).formatted(.currency(code: "USD"))
    }


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

            Section {
                Picker("PickUp Time", selection: $time) {
                    ForEach(times, id: \.self) { item in
                        Text(item.description)
                    }
                }
            }


            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }.pickerStyle(.segmented)
            }

            Section("Total: \(totalPrice)") {
                Button("Confirm order") {
                    showingPaymentAlert.toggle()
                }
            }
        }
            .navigationTitle("Payment")
            .navigationBarTitleDisplayMode(.inline)
            .alert("Order confirmed", isPresented: $showingPaymentAlert) {
            // add buttons here
        } message: {
            Text("Your total was \(totalPrice) – thank you!")
        }
    }
}

#Preview {
    NavigationStack {
        CheckoutView().environmentObject(Order())
    }
}
