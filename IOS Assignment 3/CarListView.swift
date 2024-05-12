//
//  CarListView.swift
//  IOS Assignment 3
//
//  Created by admin on 5/12/24.
//

import SwiftUI

struct CarListView: View {
    var index: Int
    @StateObject var viewModel: MainPageViewModel
    
    init(index: Int, viewModel: MainPageViewModel) {
        self.index = index
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CarListView(index: 0, viewModel: MainPageViewModel())
}
