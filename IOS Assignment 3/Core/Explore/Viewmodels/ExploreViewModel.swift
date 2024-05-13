//
//  ExploreViewModel.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import Foundation


class ExploreViewModel: ObservableObject {
    
    @Published var brands: [Brand] = [
                                      Brand(id: UUID().uuidString, brandName: "",imageName: "", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "BMW",imageName: "", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "Jaguar",imageName: "", carIds: []),
                                      Brand(id: UUID().uuidString, brandName: "Audi",imageName: "", carIds: [])
                                      ]
    
    @Published var cars: [Car] = [
        .init(id: UUID().uuidString, carName: "MERCEDES-BENZ C-CLASS", rating: 4.9, brand: "Mercedes", pricePerDay: 40, description: "This 2023 Mercedes is the perfect car to get around town or book for a weekend getaway! \n It's easy to park, fun to drive and great on gas!", mainImageName: "", imagesNames: ["","","","",""], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "Dwight Automotive", hostImageName: "dwight", hostJoinDate: "20 Nov 2018",isFavorite: false),
        .init(id: UUID().uuidString, carName: "BMW X1", rating: 4.8, brand: "BMW", pricePerDay: 36, description: "This 2021 BMW is the perfect car to get around town or book for a weekend getaway! \n It's easy to park, fun to drive and great on gas!", mainImageName: "", imagesNames: ["","",""], insurance: "", numberOfSeats: 5, numberOfDoors: 4, GasType: "", hostName: "Dwight Automotive", hostImageName: "dwight", hostJoinDate: "20 Nov 2018",isFavorite: true)
    ]
    
    
    
}