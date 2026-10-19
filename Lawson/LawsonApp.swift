//
//  LawsonApp.swift
//  Lawson
//
//  Created by Руслан Кашапов on 14.09.2026.
//

import SwiftUI

@main
struct LawsonApp: App {
    
    //TODO: Если убрать здесь store, то ничего не изменится. Зачем он тут нужен? И зачем его создаем в каждой из viewModel?
    private var store: WordsStore
    @StateObject var vm: AllWordsVM
    
    init() {
        let store = WordsStore()
        self._vm = StateObject(wrappedValue: .init(store: store))
        self.store = store
    }
    
    var body: some Scene {
        WindowGroup {
            AllWordsView(vm: vm)
                //.background(Color("backgroundColor"))
            
        }
    }
}
