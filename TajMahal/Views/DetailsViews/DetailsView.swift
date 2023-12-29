//
//  DetailView.swift
//  TajMahal
//
//  Created by Walim Aloui on 29/12/2023.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        NavigationStack {
            DetailsImageView()
                .padding(.top, 10)
            DetailsDescriptionView()
        }
        .navigationBarTitle("Menu")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: MenuBackButton())
    }
}

#Preview {
    NavigationStack {
        DetailsView()
    }
}
