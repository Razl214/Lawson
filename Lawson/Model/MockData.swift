//
//  MockData.swift
//  Lawson
//
//  Created by Руслан Кашапов on 18.09.2026.
//

import SwiftUI

@Observable
final class Mock {
    
    static var words = [
        Word(word: "Book", translate: "Книга"),
        Word(word: "Car", translate: "Машина"),
        Word(word: "Sun", translate: "Солнце"),
        Word(word: "Summer", translate: "Лето"),
        Word(word: "Music", translate: "Музыка"),
    ]
}
