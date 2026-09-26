//
//  WordsStore.swift
//  Lawson
//
//  Created by Руслан Кашапов on 26.09.2026.
//

import Observation
import SwiftUI


@Observable
final class WordsStore {
    
    private var words: [Word] = Mock.words
    
    func add(_ word: Word) {
        words.append(word)
    }
    
    func delete(at offsets: IndexSet) {
        words.remove(atOffsets: offsets)
    }
    
    func getAllWords() -> [Word] {
        words
    }
    
}
