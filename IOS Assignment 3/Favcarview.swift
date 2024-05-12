////
////  Favcarview.swift
////  IOS Assignment 3
////
////  Created by Shihan on 12/5/2024.
////
//
//import SwiftUI
//
//struct favouritecarView: View {
//    var itemID: Int
//    @ObservedObject var viewModel: MainPageViewModel
//
//    var body: some View {
//        HStack {
//            Text("Item \(itemID)")
//            Spacer()
//            Button(action: {
//                if viewModel.cars.indices.contains(itemID), let car = viewModel.cars[itemID] {
//                    if viewModel.isFavorite(car: car) {
//                        viewModel.removeFavorite(car: car)
//                    } else {
//                        viewModel.addFavorite(car: car)
//                    }
//                }
//            }) {
//                if viewModel.cars.indices.contains(itemID), let car = viewModel.cars[itemID] {
//                    Image(systemName: viewModel.isFavorite(car: car) ? "star.fill" : "star")
//                        .foregroundColor(viewModel.isFavorite(car: car) ? .yellow : .gray)
//                }
//            }
//        }
//        .padding()
//    }
//}
//truct favouritecarView: View {
//    var itemID: Int
//    @ObservedObject var viewModel: MainPageViewModel
//
//    var body: some View {
//        HStack {
//            Text("Item \(itemID)")
//            Spacer()
//            Button(action: {
//                if let car = viewModel.cars.indices.contains(itemID) ? viewModel.cars[itemID] : nil {
//                    if viewModel.isFavorite(car: car) {
//                        viewModel.removeFavorite(car: car)
//                    } else {
//                        viewModel.addFavorite(car: car)
//                    }
//                }
//            }) {
//                if let car = viewModel.cars.indices.contains(itemID) ? viewModel.cars[itemID] : nil {
//                    Image(systemName: viewModel.isFavorite(car: car) ? "star.fill" : "star")
//                        .foregroundColor(viewModel.isFavorite(car: car) ? .yellow : .gray)
//                }
//            }
//        }
//        .padding()
//    }
//}
