//
//  HackingSwiftApp.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 6.12.2023.
//

import SwiftUI

@main
struct HackingSwiftApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
           // MainView().environmentObject(order)
            EnteryView()
        }
    }
}
