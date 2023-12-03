//
//  StartOrder.swift
//  PlaceYourOrder!
//
//  Created by Anne Victoria Batista Auzier on 23/11/23.
//

import SwiftUI

struct StartOrder: View {
    
    @ObservedObject var viewModel: OrderBuilder
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(ItemType.allCases, id: \.self) { item in
                    HStack {
                        Text("\(item.rawValue)")
                            .font(.title3)
                        
                        Spacer()
                        
                        Button(action: {
                            viewModel.removeItem(type: item)
                        }, label: {
                            Image(systemName: "minus.circle")
                                .foregroundStyle(.white)
                        })
                        
                        Button(action: {
                            viewModel.addItem(type: item)
                        }, label: {
                            Image(systemName: "plus.circle")
                                .foregroundStyle(.white)
                        })

                        Text("\(viewModel.getQuantity(type: item))")
                            .font(.title3)
                    }
                }

                NavigationLink {
                    FinishOrder(viewModel: viewModel)
                } label: {
                    Text("Finish")
                        .foregroundStyle(.black)
                        .padding()
                        .font(.title3)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .disabled(viewModel.items.isEmpty)
                .frame(maxWidth: .infinity, alignment: .center)

                Spacer()

            }.padding([.vertical, .horizontal], 20)
            .navigationTitle("Place your order!")
            .background(Color.orange.opacity(0.8))
        }
    }
}

#Preview {
    StartOrder(viewModel: OrderBuilder())
}
