//
//  AppetizerRowView.swift
//  TajMahal
//
//  Created by Walim Aloui on 28/12/2023.
//

import SwiftUI

struct MenuMealRowView: View {
    let imageName: String
    let title: String
    let description: String
    let price: String
    let spiceLevel: SpiceLevel
    let meal: Dish?
    
    var body: some View {
        NavigationLink(destination: DetailsView(meal: meal)){
            
            HStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 112, maxHeight: 86, alignment: .center)
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(5)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .customPlusJakartaSansSemiBold(size: 14)
                        .customGray()
                    
                    Spacer()
                    
                    Text(description)
                        .customPlusJakartaSansMedium(size: 14)
                        .customGray()
                    
                    Spacer()
                    
                    HStack {
                        Text(price).customPlusJakartaSansMedium(size: 12)
                            .customGray()
                            .lineLimit(1)
                        
                        Spacer()
                        
                        HStack(spacing: 9) {
                            ForEach(0..<3) { index in
                                coloredImage(color: index < spiceLevel.rawValue ? Color(red: 207/255, green: 47/255, blue: 47/255) : .gray)
                            }
                        }
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
            }
            .background(RoundedRectangle(cornerRadius: 12).fill(.white))
        }        
    }
    
    func coloredImage(color: Color) -> some View {
        Image("pepper")
            .resizable()
            .renderingMode(.template)
            .foregroundColor(color)
            .aspectRatio(contentMode: .fill)
            .frame(width: 12, height: 12)
            .padding(.trailing, 10)
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    MenuMealRowView(imageName: "Biryani", title: "Samosas aux légume", description: "Délicieux chaussons frits garnis de légumes épicés", price: "5,50€", spiceLevel: .hot, meal: nil)
}
