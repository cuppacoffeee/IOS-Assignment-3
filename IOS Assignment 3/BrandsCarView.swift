//
//  BrandsCarView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/12/24.
//

import SwiftUI

struct BrandsCarView: View {
    var brand: Brand
    @StateObject var viewModel: MainPageViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("\(brand.brandName) Car")
                .font(.headline)
                .fontWeight(.semibold)
            
            ForEach(viewModel.cars.filter { $0.brand == brand.brandName}) {
                car in
                NavigationLink(destination: CarDetailedView(viewModel: viewModel, index: viewModel.cars.firstIndex(where: { $0 == car}) ?? 0)) {
                    CarListView(index: viewModel.cars.firstIndex(where: { $0 == car}) ?? 0, viewModel: viewModel)
                }
            }
        }
        .padding()
    }
}

