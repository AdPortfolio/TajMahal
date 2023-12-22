//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Walim Aloui on 22/12/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("Restaurant Indien")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    Text("Taj Mahal")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                Image("Logo")
                    .resizable()
                    .frame(width: 40, height: 40)
                Spacer()
            }
             
            Spacer()
            
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au Menu")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
