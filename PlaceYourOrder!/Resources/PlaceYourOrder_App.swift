//
//  PlaceYourOrder_App.swift
//  PlaceYourOrder!
//
//  Created by Anne Victoria Batista Auzier on 23/11/23.
//

import SwiftUI

@main
struct PlaceYourOrder_App: App {
    
    @StateObject var viewModel = OrderBuilder()
    
    var body: some Scene {
        WindowGroup {
            StartOrder(viewModel: viewModel)
        }
    }
}
