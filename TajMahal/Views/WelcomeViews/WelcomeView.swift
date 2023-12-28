//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Walim Aloui on 22/12/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    
    let viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            HeaderView()
            RestaurantInfoView()
            MenuAccessButtonView()
        }
    }
}

#Preview {
    NavigationStack {
        WelcomeView()
    }
}
