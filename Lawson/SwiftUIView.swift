//
//  SwiftUIView.swift
//  Lawson
//
//  Created by Руслан Кашапов on 24.08.2026.
//

import SwiftUI

struct SwiftUIView: View {

    var body: some View {
        VStack {
            Text("Container Relative Frame")
                .font(.title)
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Gradient(colors: [.teal, .cyan, .green]).opacity(0.6))
    }
        
}

#Preview {
    SwiftUIView()
}
