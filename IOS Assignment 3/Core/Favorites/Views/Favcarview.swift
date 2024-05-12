//
//  Favcarview.swift
//  IOS Assignment 3
//
//  Created by Shihan on 12/5/2024.
//

import SwiftUI

struct favouritecarView: View {
    var itemID: Int
    @ObservedObject var viewModel: MainPageViewModel

    var body: some View {
        HStack {
            Text("Item \(itemID)")
            Spacer()
            Button(action: {
                if viewModel.isFavorite(itemID: itemID) {
                    viewModel.removeFavorite(itemID: itemID)
                } else {
                    viewModel.addFavorite(itemID: itemID)
                }
            }) {
                Image(systemName: viewModel.isFavorite(itemID: itemID) ? "star.fill" : "star")
                    .foregroundColor(viewModel.isFavorite(itemID: itemID) ? .yellow : .gray)
            }
        }
        .padding()
    }
}

