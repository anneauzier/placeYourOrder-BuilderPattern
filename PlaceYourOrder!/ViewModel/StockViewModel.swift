//
//  StockViewModel.swift
//  PlaceYourOrder!
//
//  Created by Anne Victoria Batista Auzier on 23/11/23.
//

import Foundation

// ObjectBuilder
class OrderBuilder: ObservableObject, OrderBuilderProtocol {

    @Published var items: [Item] = []

    func addItem(type: ItemType) {
        if let index = items.firstIndex(where: { $0.type == type }) {
            if items[index].quantity < 10 {
                items[index].quantity += 1
            }
        } else {
            items.append(Item(type: type, quantity: 1))
        }

    }
    
    func removeItem(type: ItemType) {
        if let index = items.firstIndex(where: { $0.type == type }) {
            if items[index].quantity > 1 {
                items[index].quantity -= 1
            } else {
                items.remove(at: index)
            }
        }
    }
    
    func getQuantity(type: ItemType) -> Int {
        if let index = items.firstIndex(where: { $0.type == type }) {
            return items[index].quantity
        } else {
            return 0
        }
    }
    
    func build() -> [Item] {
        return items
    }
}
