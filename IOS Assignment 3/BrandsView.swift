//
//  BrandsView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/11/24.
//

import SwiftUI

struct BrandsView: View {
    @StateObject private var viewModel: MainPageViewModel
    init(viewModel: MainPageViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
            VStack {
                HStack {
                    Text("Brands")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("See All")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    })
                }
                    .foregroundStyle(.white)
                    .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(viewModel.brand) {
                                brand in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                .frame(width: 150, height: 200)
                                .overlay {
                                    VStack {
                                        Image(brand.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50)
                                        Text(brand.brandName)
                                    }
                                }
                            }
                        }
                       
                    }
                    .scrollIndicators(.hidden)
                }
                .padding(.horizontal)
        }
    }

#Preview {
    BrandsView(viewModel: MainPageViewModel())
}
