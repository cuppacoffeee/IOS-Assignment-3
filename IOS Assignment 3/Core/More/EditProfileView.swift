//
//  EditProfileView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var about: String = ""
    @State private var location: String = ""
    @State private var work: String = ""
    @State private var school: String = ""
    @State private var languages: String = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Spacer().frame(height: 40)
                
                dismissButton
                
                profileSection
                
                aboutSection
                
                infoSection
                
                Spacer().frame(height: 120)
            }
            .padding()
        }
        .scrollIndicators(.hidden)
        .ignoresSafeArea()
        .background(Color(.systemGray6))
        .overlay(bottomSaveButton)
    }
    
    var dismissButton: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "multiply")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(.black)
                .padding(.bottom)
        })
    }
    
    var profileSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Profile Photo")
                .font(.headline)
                .fontWeight(.bold)
            Text("Please select a profile photo that clearly shows your face. This helps others recognise you at the start of a trip.")
            Button(action: {}) {
                Text("Change profile photo")
                    .foregroundStyle(.black)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.black, lineWidth: 1)
                    }
            }
        }
    }
    
    var aboutSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("About")
                .font(.headline)
                .fontWeight(.bold)
            Text("Tell others about yourself and why you're a responsible and trustworthy person. Share your favourite travel stories, hobbies, dream cars, or driving experiences. Feel free to include links to your LinkedIn, Twitter, or Facebook profiles to help people get to know you better.")
            TextField("Tell people about yourself", text: $about)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
    
    var infoSection: some View {
        Group {
            textWithTextField(title: "Lives", placeholder: "Sydney, AU", binding: $location)
            textWithTextField(title: "Works", placeholder: "Ford / Fiat / Ferrari", binding: $work)
            textWithTextField(title: "School", placeholder: "UTS / NSW", binding: $school)
            textWithTextField(title: "Languages", placeholder: "English, French", binding: $languages)
        }
    }
    
    func textWithTextField(title: String, placeholder: String, binding: Binding<String>) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.footnote)
                .foregroundStyle(.gray)
            TextField(placeholder, text: binding)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
    
    var bottomSaveButton: some View {
        VStack {
            Spacer()
            ZStack {
                Color.white
                    .frame(width: UIScreen.main.bounds.width, height: 120)
                Button(action: {}) {
                    Text("Save")
                        .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
