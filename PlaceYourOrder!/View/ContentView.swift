//
//  ContentView.swift
//  PlaceYourOrder!
//
//  Created by Anne Victoria Batista Auzier on 23/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: OrderBuilder
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(SnackType.allCases, id: \.self) { snack in
                    HStack {
                        Text("\(snack.rawValue)")
                        
                        Spacer()
                        
                        Button(action: {
                            viewModel.removeSnack(snack: snack)
                        }, label: {
                            Image(systemName: "minus.circle")
                        })
                        
                        Button(action: {
                            viewModel.addSnack(snack: snack)
                        }, label: {
                            Image(systemName: "plus.circle")
                        })
                        
                        Text("\(viewModel.getQuantity(snack: snack))")
                    }
                }
                
                Divider()
                
                ForEach(DrinkType.allCases, id: \.self) { drink in
                    HStack {
                        Text("\(drink.rawValue)")
                        
                        Spacer()
                        
                        Button(action: {
                            viewModel.addDrink(drink: drink)
                        }, label: {
                            Image(systemName: "minus.circle")
                        })
                        
                        Button(action: {
                            viewModel.removeDrink(drink: drink)
                        }, label: {
                            Image(systemName: "plus.circle")
                        })
                        
                        Text("\(viewModel.getQuantityDrink(drink: drink))")
                    }
                }
            }.padding(.top, 20)
            .padding(.horizontal, 20)

            VStack(alignment: .center) {
                NavigationLink {
                    FinishOrder(viewModel: viewModel)
                } label: {
                    Text("Finish")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.blue)
                }
            }.navigationTitle("Place your order!")

            Spacer()
        }
    }
}

#Preview {
    ContentView(viewModel: OrderBuilder())
}
