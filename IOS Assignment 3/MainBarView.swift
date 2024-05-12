//
//  MainBarView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/11/24.
//

import SwiftUI

struct MainBarView: View {
    @StateObject private var viewModel = MainPageViewModel()
    
    var body: some View {
        TabView {
            MainPageView(viewModel: MainPageViewModel())
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Explore")

                    }
                }
                .padding()
            
            Text("Favorite")
                .tabItem {
                    VStack {
                        Image(systemName: "heart")
                        Text("Favorite")
                        
                    }
                }
                .padding()
            
            Text("Travel")
                .tabItem {
                    VStack {
                        Image(systemName: "car")
                        Text("Travel")

                    }
                }
                .padding()
            
            Text("Message")
                .tabItem {
                    VStack {
                        Image(systemName: "message")
                        Text("Message")

                    }
                }
                .padding()
            
            Text("More")
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
    MainBarView()
}
