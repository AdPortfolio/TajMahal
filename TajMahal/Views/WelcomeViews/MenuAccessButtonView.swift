//
//  MenuAccessButton.swift
//  TajMahal
//
//  Created by Walim Aloui on 27/12/2023.
//

import SwiftUI

struct MenuAccessButtonView: View {
    var body: some View {
        NavigationLink(destination: MenuView()) {
            Text("Accéder au menu")
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundStyle(Color.white)
                .padding(10)
                .background(Color("CustomRed"))
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
        .padding(.bottom, 5)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MenuAccessButtonView()
}
