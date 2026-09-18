//
//  AllWordsVM.swift
//  Lawson
//
//  Created by Руслан Кашапов on 18.09.2026.
//

import Foundation
import SwiftUI


@Observable
final class AllWordsVM {
     var wordsArray = Mock.wordsArray
    
    
    // тут сделать метод удаления слова
    
    func getWords() -> [Word] {
        wordsArray
    }
    
 
    
}
