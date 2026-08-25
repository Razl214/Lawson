//
//  SwiftUIView.swift
//  Lawson
//
//  Created by Руслан Кашапов on 24.08.2026.
//

import SwiftUI

struct AddNewWordView: View {
    @State var texfieldVar: String
    
    var body: some View {
       
        NavigationStack {
            Image("ChooseImage")

            
            VStack(alignment: .leading) {
                Text("Слово")
                    .font(.montserratSemibold, size: 16)
                //.frame(maxWidth: 600, maxHeight: 19)
                
                
                Text("на вашем языке")
                    .font(.montserratThin, size: 10)
                //.frame(maxWidth: 400)
                    .foregroundStyle(Color.gray)
                
                TextField("222", text: $texfieldVar)
                
            }.tracking(0.25)
                .padding()
                .background(.orange)
            
            VStack(alignment: .leading) {
                Text("Перевод")
                    .font(.montserratSemibold, size: 16)
                //.frame(maxWidth: 600, maxHeight: 19)
                
                
                Text("на языке звучания")
                    .font(.montserratThin, size: 10)
                //.frame(maxWidth: 400)
                    .foregroundStyle(Color.gray)
                
                TextField("222", text: $texfieldVar)
                
            }.tracking(0.25)
                .padding()
                .background(Color("backgroundColor"))
            

                HStack() {
                    Text("Воспроизвести")
                        .padding()
                    Spacer()
                    Button("Play") {
                        print("Play Button")
                    }
                    .padding()
                }
                .background(Color("backgroundColor"))
                
                .background(Color.green)
                .navigationTitle(Text("Новое слово"))
            
        }


    }
    
        
}

#Preview {
    AddNewWordView(texfieldVar: "Текст")
}
