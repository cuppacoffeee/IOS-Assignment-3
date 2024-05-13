//
//  TopCarsView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct TopCarsView: View {
    @StateObject var viewModel: ExploreViewModel
    
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text("Top Cars 🔥")
                .font(.headline)
                .fontWeight(.semibold)
            ForEach (viewModel.cars) { car in
                let index = viewModel.cars.firstIndex(where: {$0 == car}) ?? 0
                NavigationLink {
                    DetailCarView(viewModel: viewModel, index: index)
                        .navigationBarBackButtonHidden()
                } label: {
                    CustomCarView(index: index, viewModel: viewModel)
                }
            }
            
        }
        .padding()
    }
}
