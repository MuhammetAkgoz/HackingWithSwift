//
//  EnteryView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 12.12.2023.
//

import SwiftUI

struct EnteryView: View {
    var body: some View {
        Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
            .lineLimit(3)
            .frame(width:200)
    }
}

#Preview {
    EnteryView()
}
