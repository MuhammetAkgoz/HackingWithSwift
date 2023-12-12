//
//  EnteryView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 12.12.2023.
//

import SwiftUI

struct EnteryView: View {
    var body: some View {
        Text("This is always two lines")
            .lineLimit(3,reservesSpace: true)
            .background(.red)
    }
}

#Preview {
    EnteryView()
}
