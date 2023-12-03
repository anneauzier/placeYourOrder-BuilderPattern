//
//  FinishOrder.swift
//  PlaceYourOrder!
//
//  Created by Anne Victoria Batista Auzier on 23/11/23.
//

import SwiftUI

struct FinishOrder: View {

    @ObservedObject var viewModel: OrderBuilder
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(viewModel.build()) { item in
                Text("\(item.quantity)x \(item.type.rawValue) ")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
        }.padding([.vertical, .horizontal], 20)
        .navigationTitle("Your Order:")
        .background(Color.brown)
    }
}

#Preview {
    FinishOrder(viewModel: OrderBuilder())
}

