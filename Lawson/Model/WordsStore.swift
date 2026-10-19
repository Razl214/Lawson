//
//  WordsStore.swift
//  Lawson
//
//  Created by Руслан Кашапов on 26.09.2026.
//

import Observation
import SwiftUI


@Observable// Observation работает через отслеживание того, какие observable properties реально читает View. Apple прямо отмечает, что при @Observable SwiftUI обновляет View, когда изменяется observable property, которую читает body.
final class WordsStore {
    
    private var words: [Word] = Mock.words // - Single Source of the Truth!
//    private(set) var words: [Word] = Mock.words
    
    func add(_ newWord: Word) {
        words.append(newWord)
    }
    
    func delete(at offsets: IndexSet) {
        words.remove(atOffsets: offsets)
    }
    
    func getAllWords() -> [Word] {
        words
    }
    
}

class SuperStore {
    
    static let shared: SuperStore = SuperStore()
    
    private init() {}
}
