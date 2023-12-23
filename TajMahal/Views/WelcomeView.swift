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
            Image("TajMahal")
                .resizable()
                .padding(.leading)
                .padding(.trailing)
            
            HStack {
                
                VStack(alignment: .leading) {
                    Text("Restaurant Indien")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    Text("Taj Mahal")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .padding(.leading)
                
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .foregroundColor(Color.gray)
                    .frame(width: 40, height: 40)
                    .padding(.trailing)
            }
            
            Spacer()
            
            VStack(alignment: .center, spacing: 15) {
                
                HStack {
                    Image("clock")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(.gray)
                        .frame(width: 20, height: 17)
                        .padding(.leading)
                    Text("Mardi")
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                        .padding(.trailing)
                    Spacer()
                    Spacer()
                    Text("11h30 - 14h30 · 18h30 - 22h00")
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
                    
                    Text("Type de Service")
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                        .padding(.trailing)
                    Spacer()
                    
                    Text("À emporter")
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
                    
                    Text("12 Avenue de la Brique - 75010 Paris")
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
                    Text("www.tajmahal.fr")
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
                    
                    Text("06 12 34 56 78")
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                    Spacer()
                }
            }
            
            NavigationLink(destination: MenuView()) {
                Text("Accéder au menu")
                    .fontWeight(.bold)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .foregroundStyle(Color.white)
                    .padding(10)
                    .background(Color("CustomRed"))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
