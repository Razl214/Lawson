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
        
        VStack {
            
            VStack {
                Button(action: {
                    // TODO: показать ImagePicker
                    print("Make Image Picker")
                }) { VStack {
                    Image("ChooseImage")
                }
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
                    //.frame(maxWidth: 600, maxHeight: 19)
                        .padding(.top, 15)
                    
                    Text("на вашем языке")
                        .font(.montserratThin, size: 10)
                    //.frame(maxWidth: 400)
                        .foregroundStyle(Color.gray)
                        .padding(.bottom, 17)
                    
                    TextField("Введите слово", text: $texfieldVar)
                    //.textFieldStyle(.roundedBorder)
                    Divider()
                }
                .tracking(0.25)
                .padding([.leading], 21)
                .padding([.bottom], 25)
                //.background(.pink)
                
                
                VStack(alignment: .leading, spacing: 4) {
                    
                    Text("Перевод")
                        .font(.montserratSemibold, size: 16)
                    //.padding([.bottom], 8)
                    //.background(.green)
                    
                    Text("на языке звучания")
                        .font(.montserratThin, size: 10)
                    //.frame(maxWidth: 400)
                        .foregroundStyle(Color.gray)
                        .padding(.bottom, 17)
                    
                    TextField("Введите слово", text: $texfieldVar)
                    //.textFieldStyle(.roundedBorder)
                    Divider()
                    
                }.tracking(0.25)
                    .padding([.leading], 21)
                    .padding([.bottom], 25)
                    //.background(.orange)
                
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
        }
        .padding([.leading, .trailing], 23)
        
        
        //}
        //.ignoresSafeArea()
        //        .background(.white)
        
        //        .padding([.bottom], 223)
        //        .padding([.top], 117)
    }
    
}

#Preview {
    AddNewWordView(texfieldVar: "Текстфилд")
        .background(Color("backgroundColor"))
}
