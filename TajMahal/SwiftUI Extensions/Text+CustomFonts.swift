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
    
    func customPlusJakartaSansSemiBold(size: CGFloat) -> Text {
        return self.font(Font.custom("PlusJakartaSans-SemiBold", size: size))
    }
    
    func customPlusJakartaSansSemiBoldItalic(size: CGFloat) -> Text {
        return self.font(Font.custom("PlusJakartaSans-SemiBoldItalic", size: size))
    }
    
    func customGray() -> Text {
        return self.foregroundStyle(Color(red: 102/255, green: 102/255, blue: 102/255))
    }
    
    func menuGray() -> Text {
        return self.foregroundStyle(Color(red: 51/255, green: 51/255, blue: 51/255))
    }
}

