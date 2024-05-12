//
//  MainPageViewModel.swift
//  IOS Assignment 3
//
//  Created by admin on 5/11/24.
//

import Foundation

class MainPageViewModel: ObservableObject {
    @Published var brand: [Brand] = [
        Brand(id: UUID().uuidString, brandName: "HOLDEN", imageName: "Holden", carIds: []),
        Brand(id: UUID().uuidString, brandName: "AUDI", imageName: "Audi", carIds: []),
        Brand(id: UUID().uuidString, brandName: "BENTLEY", imageName: "Bentley", carIds: []),
        Brand(id: UUID().uuidString, brandName: "BMW", imageName: "BMW", carIds: []),
        Brand(id: UUID().uuidString, brandName: "VOLKS", imageName: "Volks", carIds: []),
        Brand(id: UUID().uuidString, brandName: "LINCOLN", imageName: "Lincoln", carIds: []),
        Brand(id: UUID().uuidString, brandName: "FORD", imageName: "Ford", carIds: [])
    ]
    
    @Published var cars: [Car] = [
    
        Car(id: UUID().uuidString, carName: "", rating: 5.0, brand: "BMW", pricePerDay: 50, description: "", mainImageName: "BMW", imagesNames: ["", ""], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false),
        
        Car(id: UUID().uuidString, carName: "", rating: 5.0, brand: "", pricePerDay: 50, description: "", mainImageName: "", imagesNames: ["", ""], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false)
    ]
<<<<<<< HEAD
    
  
    private var favoritesManager = FavoritesManager.shared

    func addFavorite(itemID: Int) {
        favoritesManager.addFavorite(itemID: itemID)
    }

    func removeFavorite(itemID: Int) {
        favoritesManager.removeFavorite(itemID: itemID)
    }

    func isFavorite(itemID: Int) -> Bool {
        return favoritesManager.isFavorite(itemID: itemID)
    }
}

=======
}


>>>>>>> bfd2b3a (Add CarListView)
