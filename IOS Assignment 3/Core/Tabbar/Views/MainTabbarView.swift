//
//  MainTabbarView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct MainTabbarView: View {
    @StateObject private var viewModel = MainPageViewModel()
    @State private var selectedTab: Int = 0
    var body: some View {
        TabView {
            MainPageView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .environment(\.symbolVariants,selectedTab == 0 ? .fill : .none)
                        Text("Search")
                    }
                }
                .onAppear{
                    selectedTab = 0
                }
            FavoritesView(viewModel: viewModel)
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                            .environment(\.symbolVariants,selectedTab == 1 ? .fill : .none)
                        Text("Favorites")
                    }
                }
                .onAppear{
                    selectedTab = 1
                }
            TripsView()
                .tabItem {
                    VStack {
                        Image(systemName: "road.lanes")
                            .environment(\.symbolVariants,selectedTab == 2 ? .fill : .none)
                        Text("Trips")
                    }
                }
                .onAppear{
                    selectedTab = 2
                }
            InboxView()
                .tabItem {
                    VStack {
                        Image(systemName: "bubble")
                            .environment(\.symbolVariants,selectedTab == 3 ? .fill : .none)
                        Text("Inbox")
                    }
                }
                .onAppear{
                    selectedTab = 3
                }
            MoreView()
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                            .environment(\.symbolVariants,selectedTab == 4 ? .fill : .none)
                        Text("More")
                    }
                }
                .onAppear{
                    selectedTab = 4
                }
        }
        .onAppear{
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

#Preview {
    MainTabbarView()
}
