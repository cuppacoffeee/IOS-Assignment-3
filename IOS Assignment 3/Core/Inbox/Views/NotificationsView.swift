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
            header
            Divider()
            notificationContent
            Divider()
        }
        .padding()
    }
    
    var header: some View {
        Text("Activity")
            .font(.headline)
            .fontWeight(.bold)
    }
    
    var notificationContent: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("UTS_logo")
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("Welcome to UTS RENTCAR")
                    .font(.headline)
                    .fontWeight(.semibold)
                Text("Thanks for joining the UTS RENTCAR community.")
            }
        }
        .padding()
    }
}

#Preview {
    NotificationsView()
}
