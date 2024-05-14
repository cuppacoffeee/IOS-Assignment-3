//
//  ExploreView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel: ExploreViewModel
    @State private var searchText: String = ""
    
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    GradientColorBackground()
                    
                    VStack {
                        Spacer().frame(height: 150)
                        CustomSearchBar(searchText: $searchText)
                        Spacer().frame(height: 60)
                        if searchText.isEmpty {
                            PopularBrandsView(viewModel: viewModel)
                        } else {
                            TopCarsView(cars: filteredCars)
                        }
                    }
                }
            }
            .modifier(NavigationModifier())
        }
    }
    
    private var filteredCars: [Car] {
        if searchText.isEmpty {
            return viewModel.cars
        } else {
            return viewModel.cars.filter { $0.carName.lowercased().contains(searchText.lowercased()) }
        }
    }
}

#Preview {
    ExploreView(viewModel: ExploreViewModel())
}

struct GradientColorBackground: View {
    var body: some View {
        VStack {
            LinearGradient(colors: [.gray, .blue], startPoint: .top, endPoint: .bottom)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            Spacer()
        }
    }
}
