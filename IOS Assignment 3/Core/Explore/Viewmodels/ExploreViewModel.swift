//
//  ExploreViewModel.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
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
        Car(id: UUID().uuidString, carName: "BMW 440i", rating: 5.0, brand: "BMW", pricePerDay: 300, description: "Very nice car with a turbocharged six-cylinder engine that delivers up to 333 horsepower.", mainImageName: "440", imagesNames: ["440", ""], insurance: "", maxDistance: nil, numberOfSeats: 4, numberOfDoors: 4, GasType: "91#", hostName: "Peter", hostImageName: "", hostJoinDate: "1/Apr/2024", isFavorite: true),
        Car(id: UUID().uuidString, carName: "Volkswagen Golf", rating: 4.5, brand: "Volkswagen", pricePerDay: 50, description: "Reliable and fuel-efficient.", mainImageName: "golf", imagesNames: ["golf", ""], insurance: "", maxDistance: nil, numberOfSeats: 5, numberOfDoors: 4, GasType: "Unleaded", hostName: "John", hostImageName: "", hostJoinDate: "1/May/2024", isFavorite: false)
    ]
}
