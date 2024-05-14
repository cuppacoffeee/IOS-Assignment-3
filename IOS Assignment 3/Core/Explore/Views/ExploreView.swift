//
//  ExploreView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel: ExploreViewModel
    init(viewModel: ExploreViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack{
                    GradientColorBackground()
                    
                    VStack {
                        Spacer().frame(height: 150)
                        searchBar()
                        Spacer().frame(height: 60)
                        PopularBrandsView(viewModel: ExploreViewModel())
                    }
                }
            }
            .modifier(NavigationModifier())
        }
    }
}

#Preview {
    ExploreView(viewModel: ExploreViewModel())
}

struct GradientColorBackground: View {
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
