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
        
        
        
        
        Car(id: UUID().uuidString, carName: "BMW 440i", rating: 4.7, brand: "BMW", pricePerDay: 300, description: "Very nice car with a turbocharged six-cylinder engine that delivers up to 333 horsepower.", mainImageName: "BMW_1_1", imagesNames: ["BMW_1_1", "BMW_1_2","BMW_1_3"], insurance: "1 year accident insurance", numberOfSeats: 4, numberOfDoors: 4, GasType: "91#", hostName: "Peter", hostImageName: "", hostJoinDate: "1/Apr/2024", isFavorite: true),
        
        Car(id: UUID().uuidString, carName: "Holden Commodore", rating: 4.4, brand: "HOLDEN", pricePerDay: 200, description: "", mainImageName: "Holden_1_1", imagesNames: ["Holden_1_1", "Holden_1_2", "Holden_1_3"], insurance: "No Insurance", numberOfSeats: 2, numberOfDoors: 2, GasType: "92#", hostName: "", hostImageName: "", hostJoinDate: "5/Feb/2024", isFavorite: false),
        
        Car(id: UUID().uuidString, carName: "Holden Colorado", rating: 4.6, brand: "HOLDEN", pricePerDay: 225, description: "", mainImageName: "Holden_2_1", imagesNames: [], insurance: "", numberOfSeats: 2, numberOfDoors: 2, GasType: "91#", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false),
    
        Car(id: UUID().uuidString, carName: "Audi A3", rating: 4.6, brand: "Audi", pricePerDay: 250, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 4, numberOfDoors: 4, GasType: "97#", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: true),
    
        Car(id: UUID().uuidString, carName: "Audi Q5", rating: 4.7, brand: "Audi", pricePerDay: 300, description: "A very good and confortable SUV.", mainImageName: "Audi_2_1", imagesNames: ["Audi_2_1","Audi_2_2","Audi_2_3"], insurance: "", numberOfSeats: 4, numberOfDoors: 4, GasType: "97#", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false),
    
        Car(id: UUID().uuidString, carName: "Bentley Continental GT S", rating: 4.8, brand: "BENTLEY", pricePerDay: 400, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 4, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: true),
        
        Car(id: UUID().uuidString, carName: "Bentley Continental GTC V8", rating: 4.8, brand: "BENYLEY", pricePerDay: 450, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 2, numberOfDoors: 2, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: true),
    
        Car(id: UUID().uuidString, carName: "BMW X5", rating: 4.6, brand: "BMW", pricePerDay: 250, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 6, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false),

        Car(id: UUID().uuidString, carName: "Volks Golf R333", rating: 4.5, brand: "VOLKS", pricePerDay: 200, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 4, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false),
        
        Car(id: UUID().uuidString, carName: "Volks Tiguan", rating: 4.7, brand: "VOLKS", pricePerDay: 300, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 4, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false),
        
        Car(id: UUID().uuidString, carName: "Lincoln Navigator", rating: 5.0, brand: "LINCOLN", pricePerDay: 400, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 4, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false),
        
        Car(id: UUID().uuidString, carName: "Lincoln MKT Strentch", rating: 5.0, brand: "LINCOLN", pricePerDay: 500, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 8, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: true),
        
        Car(id: UUID().uuidString, carName: "Ford Ranger Raptor", rating: 4.8, brand: "FORD", pricePerDay: 200, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 4, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: true),
        
        Car(id: UUID().uuidString, carName: "Ford Escape", rating: 4.6, brand: "FORD", pricePerDay: 200, description: "", mainImageName: "", imagesNames: [], insurance: "", numberOfSeats: 4, numberOfDoors: 4, GasType: "", hostName: "", hostImageName: "", hostJoinDate: "", isFavorite: false)
    ]
    
}

