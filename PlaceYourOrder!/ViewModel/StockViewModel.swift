//
//  StockViewModel.swift
//  PlaceYourOrder!
//
//  Created by Anne Victoria Batista Auzier on 23/11/23.
//

import Foundation

// ObjectBuilder

class OrderBuilder: ObservableObject {

    @Published var snacks: [Snack] = []
    @Published var drinks: [Drink] = []

    func addSnack(snack: SnackType) {
        if let index = snacks.firstIndex(where: { $0.snack == snack }) {
            if snacks[index].quantity < 10 {
                snacks[index].quantity += 1
            }
        } else {
            snacks.append(Snack(snack: snack, quantity: 1))
        }
    }
    
    func removeSnack(snack: SnackType) {
        if let index = snacks.firstIndex(where: { $0.snack == snack }) {
            if snacks[index].quantity > 1 {
                snacks[index].quantity -= 1
            } else {
                snacks.remove(at: index)
            }
        }
    }
    
    func getQuantity(snack: SnackType) -> Int {
        if let index = snacks.firstIndex(where: { $0.snack == snack }) {
            return snacks[index].quantity
        } else {
            return 0
        }
    }

    func addDrink(drink: DrinkType) {
        if let index = drinks.firstIndex(where: { $0.drink == drink }) {
            if drinks[index].quantity < 10 {
                drinks[index].quantity += 1
            }
        } else {
            drinks.append(Drink(drink: drink, quantity: 1))
        }
    }
    
    func removeDrink(drink: DrinkType) {
        if let index = drinks.firstIndex(where: { $0.drink == drink }) {
            if drinks[index].quantity > 1 {
                drinks[index].quantity -= 1
            } else {
                drinks.remove(at: index)
            }
        }
    }
    
    func getQuantityDrink(drink: DrinkType) -> Int {
        if let index = drinks.firstIndex(where: { $0.drink == drink }) {
            return drinks[index].quantity
        } else {
            return 0
        }
    }
    
    func build() -> (snack: [Snack], drink: [Drink]) {
        return (snacks, drinks)
    }
}

// Director
