//
//  Brand.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 11/5/2024.
//

import Foundation


struct Brand: Identifiable,Hashable,Codable {
    
    let id: String
    let brandName: String
    let imageName: String
    var carIds: [String]
    
}
