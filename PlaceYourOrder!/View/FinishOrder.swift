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
        VStack {
            ForEach(viewModel.build().snack) { snack in
                Text("\(snack.quantity) - \(snack.snack.rawValue) ")
            }
            ForEach(viewModel.build().drink) { drink in
                Text("\(drink.quantity) - \(drink.drink.rawValue)")
            }
        }
    }
}

#Preview {
    FinishOrder(viewModel: OrderBuilder())
}
