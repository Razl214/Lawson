//
//  Font-Extension.swift
//  Lawson
//
//  Created by Руслан Кашапов on 24.08.2026.
//

import SwiftUI

enum CustomFonts: String {
    case montserratExtraLight = "Montserrat-ExtraLight"
    case montserratRegular = "Montserrat-Regular"
    case montserratSemibold = "Montserrat-Semibold"
    case montserratThin = "Montserrat-Thing"
}

extension Font {
    
    static func custom(_ customFonts: CustomFonts, size: CGFloat) -> Font {
        Font.custom(customFonts.rawValue, fixedSize: size)
    }
}


extension Text {
    func font(_ customFonts: CustomFonts, size: CGFloat) -> Text {
        self.font(Font.custom(customFonts, size: size))
    }
}
