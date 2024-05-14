//
//  InboxView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

enum InboxTabSelection {
    case Messages
    case Notifications
}

struct InboxView: View {
    var barWidth: CGFloat = (UIScreen.main.bounds.width / 2) - 20
    @State var tabSelection: InboxTabSelection = .Messages
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGray6)
                    .ignoresSafeArea()
                VStack(spacing: 30) {
                    tabBar
                    tabContent
                    Spacer()
                }
                .padding()
            }
            .navigationTitle("Inbox")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var tabBar: some View {
        HStack {
            tabButton(title: "Messages", selection: .Messages)
            tabButton(title: "Notifications", selection: .Notifications)
        }
    }
    
    @ViewBuilder
    var tabContent: some View {
        switch tabSelection {
        case .Messages:
            EmptyElementView(imageName: "message", title: "No messages yet")
        case .Notifications:
            NotificationsView()
        }
    }
    
    func tabButton(title: String, selection: InboxTabSelection) -> some View {
        Button(action: {
            withAnimation(.spring) {
                tabSelection = selection
            }
        }) {
            VStack {
                Text(title)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(tabSelection == selection ? .blue : Color(.darkGray))
                    .frame(width: barWidth, alignment: .center)
                Rectangle()
                    .frame(width: barWidth, height: 1)
                    .foregroundStyle(tabSelection == selection ? .blue : .clear)
            }
        }
    }
}

#Preview {
    InboxView()
}
