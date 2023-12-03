//
//  Stock.swift
//  PlaceYourOrder!
//
//  Created by Anne Victoria Batista Auzier on 23/11/23.
//

import Foundation

enum ItemType: String, CaseIterable {
    case hamburger = "Hamburger"
    case hotdog = "Hot Dog"
    case sandwich = "Sandwich"
    case soda = "Soda"
    case juice = "Juice"
    case water = "Water"
}

// Object
struct Item: Identifiable {
    let id: UUID = UUID()
    let type: ItemType
    var quantity: Int
}

protocol OrderBuilderProtocol {
    func addItem(type: ItemType)
    func removeItem(type: ItemType)
    func getQuantity(type: ItemType) -> Int
    func build() -> [Item]
}



