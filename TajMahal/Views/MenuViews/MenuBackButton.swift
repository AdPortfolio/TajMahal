//
//  MenuBackButton.swift
//  TajMahal
//
//  Created by Walim Aloui on 29/12/2023.
//

import SwiftUI

struct MenuBackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.black) // Couleur de la flèche
        }
    }
}

#Preview {
    MenuBackButton()
}
