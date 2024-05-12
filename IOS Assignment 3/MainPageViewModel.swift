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

    
  
        
        Car(id: UUID().uuidString, carName: "BMW 440i", rating: 5.0, brand: "BMW", pricePerDay: 300, description: "", mainImageName: "440", imagesNames: ["440", ""], insurance: "", numberOfSeats: 4, numberOfDoors: 2, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: true),
        
        Car(id: UUID().uuidString, carName: "", rating: 5.0, brand: "", pricePerDay: 50, description: "", mainImageName: "", imagesNames: ["", ""], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false)
    ]


