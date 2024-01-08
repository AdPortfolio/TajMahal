//
//  TajMahalApp.swift
//  TajMahal
//
//  Created by Walim Aloui on 22/12/2023.
//

import SwiftUI

@main
struct TajMahalApp: App {
    @StateObject private var viewModel: ViewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            WelcomeView()
        }
        .environmentObject(viewModel)
    }
}
