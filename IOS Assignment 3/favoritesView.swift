//
//  favoritesView.swift
//  IOS Assignment 3
//
//  Created by Shihan on 12/5/2024.
//

import SwiftUI

struct FavoritesView: View {
    @StateObject private var viewModel: MainPageViewModel
    var favoriteCars: [Car]
    init(viewModel: MainPageViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        favoriteCars = viewModel.cars.filter({ $0.isFavorite == true })
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(favoriteCars) { car in
                        let index = viewModel.cars.firstIndex(where: {$0 == car}) ?? 0
                        NavigationLink {
                            CarDetailedView(viewModel: viewModel, index: index)
                                .navigationBarBackButtonHidden()
                        } label: {
                            CarListView(index: index, viewModel: viewModel)
                        }
                        
                        
                    }
                }
                .padding()
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    FavoritesView(viewModel: MainPageViewModel())
}

