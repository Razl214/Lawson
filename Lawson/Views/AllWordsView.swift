//
//  SwiftUIView.swift
//  Lawson
//
//  Created by Руслан Кашапов on 24.08.2026.
//

import SwiftUI

struct AllWordsView: View {
    
    @State private var wordsArray = [
        Word(word: "Book", translate: "Книга"),
        Word(word: "Car", translate: "Машина"),
        Word(word: "Sun", translate: "Солнце"),
        Word(word: "Summer", translate: "Лето"),
        Word(word: "Music", translate: "Музыка"),
        
    ]
    
    @State var searchText: String
    @State private var isShowingAddSheet = false
    
    var body: some View {
        
        NavigationStack {
            List(wordsArray) { word in
                NavigationLink {
                    
                    Text("TODO: сюда поставить вью подробного экрана слова \(word.word)") }
                label: {
                        WordRowView(word: word)
                    }
            }
            .listStyle(.insetGrouped)
            
            .navigationTitle("Все слова")
            .navigationBarTitleDisplayMode(.automatic)
            
            .searchable(text: $searchText, prompt: "Поиск слова")
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                      isShowingAddSheet = true
                    }
                    label: {
                        Image(systemName: "plus")
                            .font(.title3.weight(.semibold))
                            .foregroundStyle(.black)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                }
            }
            .sheet(isPresented: $isShowingAddSheet) {
                NavigationStack {
                    AddNewWordView()
                        .background(Color("backgroundColor"))
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    AllWordsView(searchText: "Поиск слова")
}
