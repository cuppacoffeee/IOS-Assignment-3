//
//  favmanager.swift
//  IOS Assignment 3
//
//  Created by Shihan on 12/5/2024.
//

// FavoritesManager.swift

import Foundation

class FavoritesManager: ObservableObject {
    static let shared = FavoritesManager()
    private let defaults = UserDefaults.standard
    private let favoritesKey = "FavoritesKey"
    
    @Published var favoriteCars: [Car] = [] 
    
    init() {
        loadFavoriteCars()
    }
    
    private func loadFavoriteCars() {
        if let data = defaults.data(forKey: favoritesKey) {
            let decoder = JSONDecoder()
            if let decodedCars = try? decoder.decode([Car].self, from: data) {
                favoriteCars = decodedCars
            }
        }
    }

    func addFavorite(car: Car) {
        guard !favoriteCars.contains(car) else { return }
        favoriteCars.append(car)
        saveFavoriteCars()
    }

    func removeFavorite(car: Car) {
        guard let index = favoriteCars.firstIndex(of: car) else { return }
        favoriteCars.remove(at: index)
        saveFavoriteCars()
    }

    func saveFavoriteCars() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(favoriteCars) {
            defaults.set(encoded, forKey: favoritesKey)
        }
    }

    func isCarFavorite(car: Car) -> Bool {
        return favoriteCars.contains(car)
    }
}
