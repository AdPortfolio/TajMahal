//
//  DetailsDescriptionView.swift
//  TajMahal
//
//  Created by Walim Aloui on 29/12/2023.
//

import SwiftUI

struct DetailsDescriptionView: View {
    
    var meal: Dish
    var body: some View {
        VStack(alignment: .leading) {
            List {
                Text("Allergènes:").customPlusJakartaSansSemiBold(size: 14)
                    .listRowSeparator(.hidden)
                    .padding(.bottom, -30)
                Text(meal.allergens).customPlusJakartaSansMedium(size: 12)
                    .customGray()
                    .listRowSeparator(.visible)
                    .padding(.top, -10)
                
                Text("Ingrédients:").customPlusJakartaSansSemiBold(size: 14)
                    .listRowSeparator(.hidden)
                    .padding(.bottom, -30)
                Text(meal.ingredients).customPlusJakartaSansMedium(size: 12)
                    .customGray()
                    .padding(.top, -10)
            }
            .scrollContentBackground(.hidden)
            .background(Color.white)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationStack {
        DetailsDescriptionView(meal: Dish(name: "", description: "", allergens: "", ingredients: "", spiceLevel: .hot, imageName: ""))
    }
    .environmentObject(ViewModel())
}
