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
final class AddWordViewModel {
    var wordsArray = Mock.wordsArray
    
    var isError: Bool = false
    var errorMessage: String = ""

    func addWord(_ word: Word) {
        do {
            //TODO: создание объекта Word слова и после прохождения проверки добавление в коллекцию
            try validate(word)
            wordsArray.append(word)
        } catch let error as AddWordError {
            isError = true
            errorMessage = "\(error.errorDescription)"
        } catch {
            isError = true
            errorMessage = "\(error.localizedDescription)"
        
        }
    }
    
    private func validate(_ word: Word) throws {
        //TODO: добавить проверку слов, чтобы состояло из букв
        guard !word.word.isEmpty && !word.translate.isEmpty
        else {
            throw AddWordError.textfieldIsEmpty
        }
    }
    
}
