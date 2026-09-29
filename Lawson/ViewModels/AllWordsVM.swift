//
//  AllWordsVM.swift
//  Lawson
//
//  Created by Руслан Кашапов on 18.09.2026.
//

import SwiftUI
internal import Combine



final class AllWordsVM: ObservableObject {
 //    var wordsArray = Mock.wordsArray
    // тут сделать метод удаления слова
    
     let store: WordsStore
    
    init(store: WordsStore) {
        self.store = store
    }
    
    func delete(at offset: IndexSet) {
        store.delete(at: offset)
    }

//    func getWords() -> [Word] {
//        Mock.wordsArray
//    }
    
 
    
}
