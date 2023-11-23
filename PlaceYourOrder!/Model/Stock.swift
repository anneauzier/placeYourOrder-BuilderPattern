//
//  Stock.swift
//  PlaceYourOrder!
//
//  Created by Anne Victoria Batista Auzier on 23/11/23.
//

import Foundation

enum SnackType: String, CaseIterable {
    case hamburger = "Hamburger"
    case hotdog = "Hot Dog"
    case sandwich = "Sandwich"
}

enum DrinkType: String, CaseIterable {
    case soda = "Soda"
    case juice = "Juice"
    case water = "Water"
}

// Objects

struct Snack: Identifiable {
    let id: UUID = UUID()
    let snack: SnackType
    var quantity: Int
}

struct Drink: Identifiable {
    let id: UUID = UUID()
    let drink: DrinkType
    var quantity: Int
}



