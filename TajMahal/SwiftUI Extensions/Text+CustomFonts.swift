//
//  Font+CustomFonts.swift
//  TajMahal
//
//  Created by Walim Aloui on 27/12/2023.
//

import SwiftUI

extension Text {
    func customPlusJakartaSansMedium(size: CGFloat) -> Text {
        return self.font(Font.custom("PlusJakartaSans-Medium", size: size))
    }
}

