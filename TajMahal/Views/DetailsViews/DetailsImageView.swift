//
//  DetailImageView.swift
//  TajMahal
//
//  Created by Walim Aloui on 29/12/2023.
//

import SwiftUI

struct DetailsImageView: View {
    
    var meal: Dish
    var body: some View {
        
        Image(meal.imageName)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: 335, maxHeight: 467)
            .padding(.leading, 15)
            .padding(.trailing, 15)
   
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    DetailsImageView(meal: Dish(name: "name", description: "Description", allergens: "Allgergens", ingredients: "ingredients", spiceLevel: .hot, imageName: "Pakoras", price: "XXX"))
}
