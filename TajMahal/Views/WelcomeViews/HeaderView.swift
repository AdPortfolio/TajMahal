//
//  HeaderView.swift
//  TajMahal
//
//  Created by Walim Aloui on 27/12/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Image("TajMahal")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.leading, 10)
            .padding(.trailing, 10)
            .padding(.bottom)
        HStack {
            VStack(alignment: .leading) {
                Text("Restaurant Indien")
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                Text("Taj Mahal")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding(.leading, 10)
            
            Spacer()
            
            Image("Logo")
                .resizable()
                .foregroundColor(Color.gray)
                .frame(width: 40, height: 40)
                .padding(.trailing, 10)
        }
    }
}

#Preview {
    HeaderView()
}
