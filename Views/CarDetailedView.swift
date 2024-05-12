//
//  CarDetailedView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/12/24.
//

import SwiftUI


struct CarDetailedView: View {

    let index: Int
    @StateObject private var viewModel: MainPageViewModel

    init(viewModel: MainPageViewModel, index: Int) {
        self._viewModel = StateObject(wrappedValue: viewModel)
        self.index = index
    }


    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    CarDetailedView(viewModel: MainPageViewModel(), index: 0)
}




