//
//  MenuView.swift
//  TajMahal
//
//  Created by Walim Aloui on 22/12/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                Section("Entrées") {
                    ForEach(viewModel.apetizerArray, id: \.self) { dish in
                        MenuMealRowView(imageName: dish.imageName,
                                        title: dish.name,
                                        description: dish.description,
                                        price: "5,50€",
                                        redPeppers: 2)
                    }
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                
                Section("Plats Principaux") {
                    ForEach(viewModel.mainCourseArray, id: \.self) { meal in
                        MenuMealRowView(
                            imageName: meal.imageName,
                            title: meal.name,
                            description: meal.description,
                            price: "5,50€",
                            redPeppers: 2)
                    }
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
            }
        }
        .navigationBarTitle("Menu")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: MenuBackButton())
    }
}

#Preview {
    NavigationStack {
        MenuView()
    }
}
