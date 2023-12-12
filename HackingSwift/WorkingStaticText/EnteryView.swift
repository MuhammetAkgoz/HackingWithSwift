//
//  EnteryView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 12.12.2023.
//

import SwiftUI

struct EnteryView: View {
    var body: some View {
        Text("This is an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode().")
            .lineLimit(1)
            .truncationMode(.middle)
            .frame(width: 200)
    }
}

#Preview {
    EnteryView()
}
