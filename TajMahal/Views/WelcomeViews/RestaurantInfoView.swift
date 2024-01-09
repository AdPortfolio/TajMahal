//
//  RestaurantInfoView.swift
//  TajMahal
//
//  Created by Walim Aloui on 27/12/2023.
//

import SwiftUI

struct RestaurantInfoView: View {
    var body: some View {
        VStack(alignment: .center) {
            
            HStack {
                Image("clock")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.gray)
                    .frame(width: 20, height: 17)
                    .padding(.leading)
                Text("Mardi").customPlusJakartaSansMedium(size: 15)
                    .foregroundStyle(.gray)
                    
                    .padding(.trailing)
                    .padding(.trailing)
                Spacer()
                Spacer()
                Text("11h30 - 14h30 · 18h30 - 22h00").customPlusJakartaSansMedium(size: 15)
                    .minimumScaleFactor(0.5)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .padding(.trailing)
            }
            
            // MARK: - 2
            HStack {
                Image("cookingPot")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.gray)
                    .frame(width: 20, height: 17)
                    .padding(.leading)
                
                Text("Type de Service").customPlusJakartaSansMedium(size: 15)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .padding(.trailing)
                    .padding(.trailing)
                Spacer()
                
                Text("À emporter").customPlusJakartaSansMedium(size: 15)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .padding(.trailing)
            }
            
            // MARK: - 3
            HStack {
                Image("location")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.gray)
                    .frame(width: 20, height: 17)
                    .padding(.leading)
                
                Text("12 Avenue de la Brique - 75010 Paris").customPlusJakartaSansMedium(size: 15)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .padding(.trailing)
                    .lineLimit(1)
                    .minimumScaleFactor(0.9)
                Spacer()
            }
            
            // MARK: - 4
            HStack {
                Image("globe")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.gray)
                    .frame(width: 20, height: 17)
                    .padding(.leading)
                Text(verbatim: "www.tajmahal.fr").customPlusJakartaSansMedium(size: 15)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    
                Spacer()
            }
            
            // MARK: - 5
            HStack {
                Image("phone")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.gray)
                    .frame(width: 20, height: 17)
                    .padding(.leading)
                
                Text("06 12 34 56 78").customPlusJakartaSansMedium(size: 15)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                Spacer()
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RestaurantInfoView()
}
