//
//  SwiftUIView.swift
//  Lawson
//
//  Created by Руслан Кашапов on 24.08.2026.
//

import SwiftUI

struct AddNewWordView: View {
    @State private var word = ""
    @State private var translation = ""
    
    @State var wordTF: String = ""
    @State var translationTF: String = ""
    @StateObject private var vm = AddWordViewModel()
    
    var body: some View {
        
        VStack {
            
            VStack {
                Button(action: {
                    // TODO: показать ImagePicker
                    print("Make Image Picker")
                }) {
                    Image("ChooseImage")
                    
                }
                //.buttonStyle(PlainButtonStyle()) // убираем стандартное выделение кнопки
            }
            //.background(.green)
            .padding(.top, 25)
            .padding(.bottom, 17)
            
            
            //            ZStack {
            VStack {
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    
                    Text("Слово")
                        .font(.montserratSemibold, size: 16)
                        .padding(.top, 15)
                    
                    Text("на вашем языке")
                        .font(.montserratThin, size: 10)
                        .foregroundStyle(Color.gray)
                        .padding(.bottom, 17)
                    
                    AddNewWordTF(word: $wordTF, placeholder: "Введите слово")
                    
                    //TextField("Введите слово", text: $texfieldVar)
                    //.textFieldStyle(.roundedBorder)
                    Divider()
                }
                .tracking(0.25)
                .padding([.leading], 21)
                .padding([.bottom], 25)
                
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text("Перевод")
                        .font(.montserratSemibold, size: 16)
                    
                    Text("на языке звучания")
                        .font(.montserratThin, size: 10)
                    
                        .foregroundStyle(Color.gray)
                        .padding(.bottom, 17)
                    
                    AddNewWordTF(word: $translationTF, placeholder: "Введите перевод")
                    
                    //TextField("Введите слово", text: $texfieldVar)
                    //.textFieldStyle(.roundedBorder)
                    Divider()
                    
                }.tracking(0.25)
                    .padding([.leading], 21)
                    .padding([.bottom], 25)
                
                
                HStack {
                    Text("Воспроизвести")
                        .font(.montserratSemibold, size: 16)
                    Spacer()
                    
                    Button(action: {
                        // TODO: make Play Button
                        print("PlayButton")
                    }) {
                        Image("PlayButton")
                    }
                }
                .padding(.leading, 21)
                .padding(.trailing, 35)
                .padding(.bottom, 49)
                .background(.white)
                .foregroundStyle(.black)
                .navigationTitle(Text("Новое слово"))
            }
            .background(.white)
            
            Spacer()
            
            Button("Сохранить") {
                let newWord = Word(word: "Test", translate: "test")
                print("Save new word")
            }
            .disabled(word.isEmpty || translation.isEmpty)
        }
        .padding([.leading, .trailing], 23)
    }
    
}

#Preview {
    AddNewWordView()
        .background(Color("backgroundColor"))
}
