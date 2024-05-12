//
//  favmanager.swift
//  IOS Assignment 3
//
//  Created by Shihan on 12/5/2024.
//

import SwiftUI

class FavoritesManager: ObservableObject {
    static let shared = FavoritesManager()
    private let defaults = UserDefaults.standard
    private let favoritesKey = "FavoritesKey"
    
    @Published var favorites: [Item] = []
    
    init() {
        loadFavorites()
    }
    
    private func loadFavorites() {
        if let data = defaults.data(forKey: favoritesKey) {
            let decoder = JSONDecoder()
            if let decodedItems = try? decoder.decode([Item].self, from: data) {
                favorites = decodedItems
            }
        }
    }

    func addFavorite(item: Item) {
        guard !favorites.contains(item) else { return }
        favorites.append(item)
        saveFavorites()
    }

    func removeFavorite(item: Item) {
        guard let index = favorites.firstIndex(of: item) else { return }
        favorites.remove(at: index)
        saveFavorites()
    }

    func saveFavorites() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(favorites) {
            defaults.set(encoded, forKey: favoritesKey)
        }
    }

    func isFavorite(item: Item) -> Bool {
        return favorites.contains(item)
    }
}


