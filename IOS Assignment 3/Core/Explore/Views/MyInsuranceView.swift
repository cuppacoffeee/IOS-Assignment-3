//
//  MyInsuranceView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct MyInsuranceView: View {
    var body: some View {
        VStack(spacing: 30) {
            Rectangle()
                .frame(width: 60, height: 5)
                .foregroundStyle(Color(.systemGray5))
            Image(systemName: "questionmark.circle")
                .resizable()
                .frame(width: 35, height: 35)
            Text("All UTS RENTCAR protection plans include a third-party liability insurance policy issued to UTS RENTCAR. The policy provides secondary coverage to ensure that any UTSRENT driver will be insured to the state minimum limits required for third-party liability, unless primary coverage is explicitly required by an applicable state statute. Liability coverage depends on the plan chosen.")
                .font(.subheadline)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MyInsuranceView()
}
