//
//  Favview.swift
//  IOS Assignment 3
//
//  Created by Shihan on 12/5/2024.
//


import SwiftUI

struct FavView: View {
    @ObservedObject var favoritesManager = FavoritesManager.shared
    
    var body: some View {
        NavigationView {
            List(favoritesManager.favorites) { item in
                HStack {
                    Text(item.title)
                    Spacer()
                    Button(action: {
                        favoritesManager.removeFavorite(item: item)
                    }) {
                        Image(systemName: "trash")
                    }
                }
            }
            .navigationTitle("Favorites")
        }
    }
}
