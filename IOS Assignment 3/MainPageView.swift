//
//  MainPageView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/11/24.
//

import SwiftUI

struct MainPageView: View {
    @StateObject var viewModel: MainPageViewModel
    init(viewModel: MainPageViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack{
                    backgroundColor()
                    
                    VStack {
                        Spacer().frame(height: 150)
                        searchBar()
                        Spacer().frame(height: 60)
                        BrandsView(viewModel: MainPageViewModel())
                    }
                }
            }
            .modifier(NavigationModifier())
        }
    }
}

#Preview {
    MainPageView(viewModel: MainPageViewModel())
}

struct backgroundColor: View {
    var body: some View {
        VStack {
            LinearGradient(colors: [.gray, .blue], startPoint: .top, endPoint: .bottom)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            Spacer()
        }
    }
}

struct searchBar: View {
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                    .foregroundStyle(.white)
                Text("Search car you want...")
                    .font(.footnote)
                    .foregroundStyle(.white)
                Spacer()
            }
            .frame(height: 60)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray3))
                    .shadow(color: .black.opacity(0.6), radius: 10)
            }
            .padding(.horizontal)
        })
    }
}
