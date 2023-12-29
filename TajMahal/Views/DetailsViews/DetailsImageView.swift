//
//  DetailImageView.swift
//  TajMahal
//
//  Created by Walim Aloui on 29/12/2023.
//

import SwiftUI

struct DetailsImageView: View {
    var body: some View {
        
        Image("TikkaMasala")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: 335, maxHeight: 467)
            .padding(.leading, 15)
            .padding(.trailing, 15)
   
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    DetailsImageView()
}
