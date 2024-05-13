//
//  Tripsview.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

enum TabSelection: String, CaseIterable {
    case booked = "Booked"
    case history = "History"
}

struct TripsView: View {
    @State private var tabSelection: TabSelection = .booked

    var body: some View {
        NavigationStack {
            VStack {
                Picker("Tabs", selection: $tabSelection) {
                    ForEach(TabSelection.allCases, id: \.self) { tab in
                        Text(tab.rawValue).tag(tab)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

                switch tabSelection {
                case .booked:
                    TripsEmptyView(imageName: "car", title: "No trips")
                case .history:
                    TripsEmptyView(imageName: "car", title: "No previous trips")
                }
                
                Spacer()
            }
            .background(Color(.systemGray6))
            .navigationTitle("Trips")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}

// Updated the EmptyElementView to TripsEmptyView to avoid redeclaration
struct TripsEmptyView: View {
    var imageName: String
    var title: String

    var body: some View {
        VStack {
            Image(systemName: imageName) // Assuming using SF Symbols
                .font(.largeTitle)
            Text(title)
                .font(.title)
        }
    }
}
