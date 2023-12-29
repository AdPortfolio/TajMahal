//
//  DetailsDescriptionView.swift
//  TajMahal
//
//  Created by Walim Aloui on 29/12/2023.
//

import SwiftUI

struct DetailsDescriptionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            List {
                Text("Allergènes:").customPlusJakartaSansMedium(size: 12)
                    .listRowSeparator(.hidden)
                    .padding(.bottom, -30)
                Text("Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon.").customPlusJakartaSansMedium(size: 12)
                    .listRowSeparator(.visible)
                    .padding(.top, -10)
                
                Text("Ingrédients:").customPlusJakartaSansMedium(size: 12)
                    .listRowSeparator(.hidden)
                    .padding(.bottom, -30)
                Text("Poulet, oignon, tomates en purée, crème fraîche, crème de coco, huile, beurre clarifié (ghee), ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, sel, coriandre fraîche.").customPlusJakartaSansMedium(size: 12)
                    .padding(.top, -10)
            }
            .scrollContentBackground(.hidden)
            .background(Color.white)
        }
    }
}










#Preview(traits: .sizeThatFitsLayout) {
    DetailsDescriptionView()
}
