//
//  EnteryView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 12.12.2023.
//

import SwiftUI

struct EnteryView: View {
    var message: AttributedString {
        var result = AttributedString("Hello, world!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        return result
    }
    
    var message2: AttributedString {
        var result = AttributedString("World!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .blue
        return result
    }

    var body: some View {
        Text(message + message2)
    }
}

#Preview {
    EnteryView()
}
