//
//  WordRowView.swift
//  Lawson
//
//  Created by Руслан Кашапов on 12.09.2026.
//

import SwiftUI

struct WordRowView: View {
    let word: Word
    
    var body: some View {
        HStack(spacing: 12) {
//            Image(word.imageName)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 60, height: 60)
//                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 2) {
                Text(word.word)
                    .font(.montserratSemibold, size: 20)
                    .foregroundColor(.primary)
                Text(word.translate)
                    .font(.montserratExtraLight, size: 16)
                    .foregroundColor(.primary)
            }
            
            Spacer()
        }
        .padding(.vertical, 6)
    }
}
