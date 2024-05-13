//
//  NotificationsView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Activity")
                .font(.headline)
                .fontWeight(.bold)
            Divider()
            HStack(alignment: .top,spacing: 15) {
                Circle()
                    .frame(width: 75, height: 75)
                    .overlay {
                        Text("CarRentalApp")
                            .font(.caption2)
                            .foregroundStyle(.white)
                    }
                VStack(alignment: .leading) {
                    Text("Welcome to CarRentalApp")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Text("Thanks for joining the CarRentalApp community. your adventure starts here")
                }
            }
            .padding()
            Divider()
        }
    }
}

#Preview {
    NotificationsView()
}
