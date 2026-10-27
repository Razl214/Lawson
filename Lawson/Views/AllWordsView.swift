//
//  SwiftUIView.swift
//  Lawson
//
//  Created by Руслан Кашапов on 24.08.2026.
//

import SwiftUI

struct AllWordsView: View {
    
    var vm: AllWordsVM
    
    @State private var searchText: String = ""
    @State private var isShowingAddSheet = false
    
    var body: some View {
        
        NavigationStack {
            List{
                ForEach(vm.store.getAllWords()) { word in
                    NavigationLink {
                        //TODO: сделать логику свайпа удаления(метод будет во вм), здесь вызываем метод удаления. Таблица сама удалила строчку и обновила таблицу
                        Text("TODO: сюда поставить вью подробного экрана слова \(word.word)") }
                    label: {
                        WordRowView(word: word)
                    }
                }
                .onDelete { offsets in vm.delete(at: offsets)
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
                    AddNewWordView(vm: AddNewWordVM(store: vm.store))
                        .background(Color("backgroundColor"))
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    AllWordsView(vm: AllWordsVM(store: .init()))
}
