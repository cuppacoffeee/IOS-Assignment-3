//
//  MainTabbarView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct MainTabbarView: View {
    @StateObject private var viewModel = ExploreViewModel()
    
    
    var body: some View {
        TabView {
            ExploreView(viewModel: ExploreViewModel())
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Explore")

                    }
                }
                .padding()
            
            
            FavoritesView(viewModel: viewModel)                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("Favorite")
                        
                        
                    }
                }
                .padding()
            
            TripsView()
                .tabItem {
                    VStack {
                        Image(systemName: "car")
                        Text("Travel")

                    }
                }
                .padding()
            
            InboxView()
                .tabItem {
                    VStack {
                        Image(systemName: "message")
                        Text("Message")

                    }
                }
                .padding()
            
            MoreView()
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                        Text("More")

                    }
                }
                .padding()
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

#Preview {
    MainTabbarView()
}
