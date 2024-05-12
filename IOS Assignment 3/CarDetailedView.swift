//
//  CarDetailedView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/12/24.
//

import SwiftUI

struct CarDetailedView: View {
    
    @State private var isFavorite: Bool
    let car: Car
    @StateObject private var favoritesManager: FavoritesManager
    
    init(car: Car) {
        self.car = car
        self._isFavorite = State(initialValue: false) // Initialize isFavorite to false
        self._favoritesManager = StateObject(wrappedValue: FavoritesManager.shared) // Initialize favoritesManager
        _isFavorite = State(initialValue: favoritesManager.isCarFavorite(car: car)) // Update isFavorite based on the stored favorite status
    }
    
    var body: some View {
        VStack {
            // Car details...
                
                Button(action: {
                    isFavorite.toggle()
                    if isFavorite {
                        favoritesManager.addFavorite(car: car)
                    } else {
                        favoritesManager.removeFavorite(car: car)
                    }
                }) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(isFavorite ? .red : .gray)
                }
            }
            .padding()
        }
    }




