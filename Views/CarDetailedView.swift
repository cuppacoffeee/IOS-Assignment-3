//
//  CarDetailedView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/12/24.
//

import SwiftUI


struct CarDetailedView: View {
    let index: Int
        @StateObject private var viewModel: MainPageViewModel
        
        init(viewModel: MainPageViewModel, index: Int) {
            self._viewModel = StateObject(wrappedValue: viewModel)
            self.index = index
        }

        var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ImageView(viewModel: viewModel, index: index)
                    carInfoSection
                    detailedInfoSections
                }
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea()
            .background(Color(.systemGray6))
            .toolbar(.hidden, for: .tabBar)
            .overlay(bottomBar)
        }
        
        private var carInfoSection: some View {
            VStack(alignment: .leading, spacing: 10) {
                Text(viewModel.cars[index].carName)
                    .font(.headline)
                    .fontWeight(.bold)
                HStack(spacing: 2) {
                    Text(String(format: "%.1f", viewModel.cars[index].rating))
                    Image(systemName: "star.fill")
                        .foregroundStyle(.orange)
                }
            }
            .padding(.horizontal)
        }
        
        private var detailedInfoSections: some View {
            VStack {

            }
        }
        
        private var bottomBar: some View {
            VStack {
                Spacer()
                ZStack {
                    Color.white
                        .frame(width: UIScreen.main.bounds.width, height: 120)
                    priceButton
                }
            }
            .ignoresSafeArea()
        }
        
        private var priceButton: some View {
            HStack {
                priceDetails
                Spacer()
                NextStepButton
            }
            .padding(.horizontal, 20)
            .padding(.vertical)
        }
        
        private var priceDetails: some View {
            VStack {
                Text("\(viewModel.cars[index].pricePerDay)$ per day")
                    .font(.headline)
                    .fontWeight(.semibold)
                Text("\(viewModel.cars[index].pricePerDay * 2)$ total")
                    .font(.subheadline)
                    .underline()
            }
        }
        
        private var NextStepButton: some View {
            Button(action: {}) {
                Text("Next Step")
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 40)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
}

#Preview {
    CarDetailedView(viewModel: MainPageViewModel(), index: 0)
}




