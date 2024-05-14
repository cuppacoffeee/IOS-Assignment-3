//
//  BrandsCarView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/12/24.
//

import SwiftUI

struct BrandsCarView: View {
    var brand: Brand
    @StateObject var viewModel: ExploreViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("\(brand.brandName) Car")
                .font(.headline)
                .fontWeight(.semibold)
            
            ForEach(viewModel.cars.filter { $0.brand == brand.brandName}) {
                car in
                NavigationLink(destination: DetailCarView(viewModel: viewModel, index: viewModel.cars.firstIndex(where: { $0 == car}) ?? 0)) {
                    TopCarsView(index: viewModel.cars.firstIndex(where: { $0 == car}) ?? 0, viewModel: viewModel)
                }
            }
        }
        .padding()
    }
}

