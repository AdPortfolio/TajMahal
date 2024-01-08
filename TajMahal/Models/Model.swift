//
//  Model.swift
//  TajMahal
//
//  Created by Walim Aloui on 22/12/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel: Int {
    case light = 1
    case medium
    case hot
}

// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish: Hashable {
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price: String?
}
