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
                    // показать ImagePicker
                }) { VStack {
                    Image("ChooseImage")
                        //.font(.largeTitle)
                        //.foregroundColor(.gray)
                        //.foregroundColor(.gray)
                        //.font(.subheadline)
                }
                    
                    // )
                }
                .buttonStyle(PlainButtonStyle()) // убираем стандартное выделение кнопки
            }
            //.background(.gray)
            .padding(8)
            
            
            ZStack {
                VStack {
                    VStack(alignment: .leading, spacing: 4) {
                        
                        Text("Слово")
                            .font(.montserratSemibold, size: 16)
                        //.frame(maxWidth: 600, maxHeight: 19)
                        
                        Text("на вашем языке")
                            .font(.montserratThin, size: 10)
                        //.frame(maxWidth: 400)
                            .foregroundStyle(Color.gray)
                            .padding([.bottom], 17)
                        
                        TextField("Введите слово", text: $texfieldVar)
                        //.textFieldStyle(.roundedBorder)
                        Divider()
                        
                    }
                    .tracking(0.25)
                    .padding([.leading], 8)
                    .padding([.bottom], 25)
                    
                    
                    VStack(alignment: .leading, spacing: 4) {
                        
                        Text("Перевод")
                            .font(.montserratSemibold, size: 16)
                        //.padding([.bottom], 8)
                        //.background(.green)
                        
                        Text("на языке звучания")
                            .font(.montserratThin, size: 10)
                        //.frame(maxWidth: 400)
                            .foregroundStyle(Color.gray)
                            .padding([.bottom], 17)
                        
                        TextField("Введите слово", text: $texfieldVar)
                        //.textFieldStyle(.roundedBorder)
                        Divider()
                        
                    }.tracking(0.25)
                        .padding([.leading], 8)
                    //.background(Color("backgroundColor"))
                    
                    
                    Button(action: {
                        // воспроизвести произношение
                    }) {
                        HStack {
                            Text("Воспроизвести")
                                .font(.montserratSemibold, size: 16)
                            Spacer()
                            Image("PlayButton")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.black)
                        //.background(Color.blue.opacity(0.1))
                        //.cornerRadius(12)
                    }
                    
                    /* HStack() {
                     Text("Воспроизвести")
                     .padding()
                     Spacer()
                     Button("Play") {
                     print("Play Button")
                     }
                     .padding()
                     }*/
                    //.background(Color("backgroundColor"))
                    
                    //.background(Color.green)
                    .navigationTitle(Text("Новое слово"))
                    
                }
                
            }
//            .navigationTitle("New word")
//            .navigationBarTitleDisplayMode(.inline)
            //.background(.red)
        }
        //.ignoresSafeArea()
        .background(Color("backgroundColor"))
        
        
        .padding(15)
        
    }
    
    
}

#Preview {
    AddNewWordView(texfieldVar: "Текстфилд")
}
