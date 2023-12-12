//
//  EnteryView.swift
//  HackingSwift
//
//  Created by Muhammet Akgöz on 12.12.2023.
//

import SwiftUI

struct EnteryView: View {
    var body: some View {
        Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
            .padding()
            .background(.red)
            .foregroundStyle(.white)
            .fontDesign(.serif)
            .fontWidth(.expanded)
            .lineSpacing(20)
            .frame(width:200)
        
        
    }
}

#Preview {
    EnteryView()
}
