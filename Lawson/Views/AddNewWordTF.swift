//
//  AddNewWordTF.swift
//  Lawson
//
//  Created by Руслан Кашапов on 18.09.2026.
//

import SwiftUI

struct AddNewWordTF: View {
    
    @State var word: Binding<String>
    var placeholder: String
    
    var body: some View {
        TextField(placeholder, text: word)
            .font(.custom(.montserratRegular, size: 16))
            //.padding()
            .background(.white)
            .cornerRadius(6)
        
    }
}

//#Preview {
//    AddNewWordTF(word: <#T##Binding<String>#>, placeholder: <#T##String#>)
//}
