//
//  LawsonApp.swift
//  Lawson
//
//  Created by Руслан Кашапов on 14.09.2026.
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
