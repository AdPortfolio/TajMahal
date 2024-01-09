//
//  MenuView.swift
//  TajMahal
//
//  Created by Walim Aloui on 22/12/2023.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "PlusJakartaSans-Bold", size: 20)!, .foregroundColor : UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)]
    }
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Text("Entrées")
                        .customPlusJakartaSansSemiBold(size: 16)
                        .customGray()
                    
                    ForEach(viewModel.apetizerArray, id: \.self) { dish in
                        
                        MenuMealRowView(imageName: dish.imageName,
                                        title: dish.name,
                                        description: dish.description,
                                        price: dish.price!,
                                        spiceLevel: dish.spiceLevel, meal: dish)
                    }
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                
                
                Section {
                    Text("Plats Principaux")
                        .customPlusJakartaSansSemiBold(size: 16)
                        .customGray()
                    
                    ForEach(viewModel.mainCourseArray, id: \.self) { meal in
                        MenuMealRowView(
                            imageName: meal.imageName,
                            title: meal.name,
                            description: meal.description,
                            price: meal.price ?? "€",
                            spiceLevel: meal.spiceLevel, meal: meal)
                    }
                    
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
            }
        }
        .navigationBarTitle(Text("Menu"))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: MenuBackButton(textTitle: ""))
        
    }
}

#Preview {
    NavigationStack {
        MenuView()
    }
    .environmentObject(ViewModel())
}
