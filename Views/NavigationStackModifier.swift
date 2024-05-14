//
//  NavigationStackModifier.swift
//  IOS Assignment 3
//
//  Created by admin on 5/13/24.
//

import SwiftUI

struct NavigationModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        
            .scrollIndicators(.hidden)
            .background(Color(.systemGray6))
            .ignoresSafeArea()
            .navigationTitle("Rent Car")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Circle()
                        .fill(.white.opacity(0.1))
                        .frame(width: 45, height: 45)
                        .overlay {
                            Image(systemName: "bell")
                                .foregroundStyle(.white)
                        }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Circle()
                    
                        .fill(.white.opacity(0.1))
                        .frame(width: 45, height: 45)
                        .overlay {
                            Image(systemName: "person")
                                .foregroundStyle(.white)
                        }
                }
            }
    }
}

extension View {
    func navigationModifier() -> some View {
        return modifier(NavigationModifier())
    }
}



