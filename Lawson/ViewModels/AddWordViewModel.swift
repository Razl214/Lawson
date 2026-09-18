//
//  NewWordViewModel.swift
//  Lawson
//
//  Created by Руслан Кашапов on 14.09.2026.
//

import Foundation
internal import Combine

enum AddWordError: Error {
    case textfieldIsEmpty
    case imageIsEmpty
}

enum AlertSelectionActions {
    case camera
    case photolibrary
    case internet
    case delete
}

@MainActor // - зачем его ставить на все viewmodel?
final class AddWordViewModel: ObservableObject {
    @Published var word = ""
    @Published var translation = ""
    
    var isFormValid: Bool {
        //!word.isEmpty && !translation.isEmpty
        word.isEmpty == false && translation.isEmpty == false
    }
    
//    func saveWord () {
//        guard   let word = word,
//                let translation = translation
//        word.isEmpty == false,
//        translation.isEmpty == false
//        else {
//            print("Can't save, empty word or translate")
//            //TODO: make ALERT that some fileds are empty
//            return
//        }
//    }
//    
}
