//
//  NewWordViewModel.swift
//  Lawson
//
//  Created by Руслан Кашапов on 14.09.2026.
//

import Foundation
internal import Combine

enum AddWordError: Error, LocalizedError {
    case textfieldIsEmpty
    case imageIsEmpty
    
    var errorDescription: String {
        switch self {
        case .textfieldIsEmpty:
            return "Textfield is empty"
        case .imageIsEmpty:
            return "Image is empty"
        }
    }
}


enum AlertSelectionActions {
    case camera
    case photolibrary
    case internet
    case delete
}

@MainActor // - зачем его ставить на все viewmodel?
@Observable
final class AddNewWordVM {

   private let store: WordsStore // это вычисляемое свойство?
    //или этот экхемпляр нужен только для вызова методов WordsStore?

    var isError: Bool = false
    var errorMessage: String = ""

    init(store: WordsStore) {
        self.store = store
    }
    
    func addWord(_ word: Word/*, translate: Word, image: Word*/) -> Bool {
        //Сюда передавать слово, перевод и картинку и выдавать объект Word
        do {
            try validate(word)
            store.add(word)
            
            isError = false //старое состояние ошибки может остаться, если не сбросить значение
            errorMessage = ""
            
            return true
        } catch let error as AddWordError {
            isError = true
            errorMessage = error.errorDescription
            return false
        } catch {
            isError = true
            errorMessage = error.localizedDescription
            return false
        }
    }
    
    private func validate(_ word: Word) throws {
        //TODO: создание объекта Word-слова и после прохождения проверки добавление в коллекцию
        /* 1) новое слово добавляется, когда заполнены все поля
         если какое-то поле не заполнено, выходит алерт с предупреждением заполнить все поля
         если все поля заполнены, выходит алерт, где написано, что новое слово \(новое_слово) добавлено
         2) пустое слово не добавляется
         3) если пользователь пишет слово с маленькой буквы, в базу данных оно добавляется с большой буквы. Сделать uppercased
         4) если пользователь добавляет цифру, она добавляется в базу данных как тип String
        */
        guard !word.word.isEmpty && !word.translate.isEmpty
        else {
            throw AddWordError.textfieldIsEmpty
        }
    }
    
}
