//
//  ImageViewPager.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct ImageViewPager: View {
    @StateObject private var viewModel: ExploreViewModel
        @Environment(\.dismiss) var dismiss
        let heightTabView: CGFloat = UIScreen.main.bounds.height / 3
        @State private var isFavorite: Bool
        let index: Int

        init(viewModel: ExploreViewModel, index: Int) {
            _viewModel = StateObject(wrappedValue: viewModel)
            _isFavorite = State(initialValue: viewModel.cars[index].isFavorite)
            self.index = index
        }

        var body: some View {
            TabView {
                ForEach(viewModel.cars[index].imagesNames, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(height: heightTabView)
            .overlay(overlayContent)
        }

        private var overlayContent: some View {
            VStack(alignment: .leading) {
                navigationBar
                Spacer()
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 40)
        }

        private var navigationBar: some View {
            HStack {
                backButton
                Spacer()
                favoriteButton
            }
        }

        private var backButton: some View {
            Button(action: {
                dismiss()
            })
            {
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 10, x: 10, y: 10)
            }
        }

        private var favoriteButton: some View {
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                .frame(width: 40, height: 40)
                .overlay {
                    Button(action: {
                        isFavorite.toggle()
                    }) {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(.red)
                    }
                }
        }
}

#Preview {
    ImageViewPager(viewModel: ExploreViewModel(), index: 0)
}
