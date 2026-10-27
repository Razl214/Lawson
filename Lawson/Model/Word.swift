//
//  Word.swift
//  Lawson
//
//  Created by Руслан Кашапов on 12.09.2026.
//

import Foundation

struct Word: Identifiable, Hashable {
    let id = UUID() // уникальный идентификатор (нужен для списков)
    
    let word: String // слово на иностранном языке
    let translate: String // перевод слова на родном языке
    // let image: Image
    
//    init(title: String, subtitle: String) {
//        self.word = title
//        self.translate = subtitle
//    }
}
