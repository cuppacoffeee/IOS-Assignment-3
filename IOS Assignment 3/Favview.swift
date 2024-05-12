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
            List(favoritesManager.favoriteCars) { car in // Use favoriteCars instead of favorites
                HStack {
                    Text(car.title) // Assuming Car has a title property
                    Spacer()
                    Button(action: {
                        favoritesManager.removeFavorite(car: car) // Update to removeFavorite(car:)
                    }) {
                        Image(systemName: "trash")
                    }
                }
            }
            .navigationTitle("Favorites")
        }
    }
}
