//
//  LawsonApp.swift
//  Lawson
//
//  Created by Руслан Кашапов on 24.08.2026.
//

import SwiftUI

@main
struct LawsonApp: App {
    var body: some Scene {
        WindowGroup {
            AllWordsView(searchText: "Search")
                //.background(Color("backgroundColor"))
            
        }
    }
}
