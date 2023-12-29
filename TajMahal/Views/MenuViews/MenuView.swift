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
                    MenuMealRowView(imageName: "Samosas",
                                     title: "Samosas aux légumes",
                                     description: "Délicieux chaussons frits garnis de légumes épicés",
                                     price: "5,50€",
                                     redPeppers: 2)
                     
                    MenuMealRowView(imageName: "Pakoras",
                                     title: "Samosas aux légumes",
                                     description: "Beignets de légumes enrobés de pâte épicée et frits",
                                     price: "5,00€",
                                     redPeppers: 1)
                    
                    MenuMealRowView(imageName: "Aloo",
                                     title: "Aloo Tikki",
                                     description: "Galettes de pommes de terre épicées et croustillantes",
                                     price: "5,50€",
                                     redPeppers: 2)
                }
              
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                Section("Plats Principaux") {
                    MenuMealRowView(imageName: "TikkaMasala", title: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", price: "13,00€", redPeppers: 2)
                    
                    MenuMealRowView(imageName: "Biryani", title: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", price: "10,50€", redPeppers: 2)
                    
                    MenuMealRowView(imageName: "Biryani", title: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", price: "10,50€", redPeppers: 2)
                    
                    MenuMealRowView(imageName: "Biryani", title: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", price: "10,50€", redPeppers: 2)
                    
                    MenuMealRowView(imageName: "Biryani", title: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", price: "10,50€", redPeppers: 2)
                    
                    MenuMealRowView(imageName: "Biryani", title: "Biryani aux légumes", description: "Riz parfumé cuit avec des légumes et des épices", price: "10,50€", redPeppers: 2)
                }
    
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
            }
            
        }
        .navigationTitle("Menu")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NavigationStack {
        MenuView()
    }
}
