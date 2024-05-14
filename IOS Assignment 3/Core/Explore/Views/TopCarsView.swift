//
//  TopCarsView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/12/24.
//

import SwiftUI


struct TopCarsView: View {
    var index: Int
    @StateObject var viewModel: ExploreViewModel
    @State private var isFavorite: Bool
    
    init(index: Int, viewModel: ExploreViewModel) {
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
    TopCarsView(index: 0, viewModel: ExploreViewModel())
}
