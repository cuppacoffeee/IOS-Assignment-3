//
//  CarListView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/12/24.
//

import SwiftUI


struct CarListView: View {
    var index: Int
    @StateObject var viewModel: MainPageViewModel
    @State private var isFavorite: Bool
    
    init(index: Int, viewModel: MainPageViewModel) {
        self.index = index
        self._viewModel = StateObject(wrappedValue: viewModel)
        _isFavorite = State(initialValue: viewModel.cars[index].isFavorite)
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .frame(height: 10)
            .overlay {
                HStack(spacing: 10) {
                    Image(viewModel.cars[index].mainImageName)
                        .resizable()
                        .frame(width: 100, height: 60)
                        .scaledToFit()
                    VStack(alignment: .leading, spacing: 10) {
                        Text(viewModel.cars[index].carName)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        
                        HStack {
                            Image(systemName: "Star.fill")
                                .foregroundStyle(.yellow)
                            Text(String(format: "%.1f", viewModel.cars[index].rating))
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                        }
                        Text("Post by: \(viewModel.cars[index].hostName)")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                }
            }
    }
}



#Preview {
    CarListView(index: 0, viewModel: MainPageViewModel())
}
