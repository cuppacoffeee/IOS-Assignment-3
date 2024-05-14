//
//  TripDateView.swift
//  IOS Assignment 3
//
//  Created by 李昌霖 on 13/5/2024.
//

import SwiftUI

struct TripDateView: View {
    var currentYear = Calendar.current.component(.year, from: Date())
    var currentMonth = Calendar.current.component(.month, from: Date())
    var currentDay = Calendar.current.component(.day, from: Date())
    var returnDay = Calendar.current.component(.day, from: Calendar.current.date(byAdding: .day, value: 2, to: Date()) ?? Date())
    
    @State private var selectedDates: Set<DateComponents>
    @State private var isDatePickerPresented: Bool = false
    
    init() {
        self._selectedDates = State(initialValue: [
            .init(timeZone: .gmt, year: currentYear, month: currentMonth, day: currentDay, hour: 10),
            .init(timeZone: .gmt, year: 2023, month: 12, day: returnDay, hour: 10)
        ])
    }
    
    func formattedDate(addedDays: Int) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE d MMM "
        return dateFormatter.string(from: Calendar.current.date(byAdding: .day, value: addedDays, to: Date()) ?? Date())
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Trip Dates")
                .foregroundStyle(Color(.darkGray))
                .font(.headline)
                .fontWeight(.semibold)
            dateSelectionView
        }
        .padding(.horizontal)
        .popover(isPresented: $isDatePickerPresented, arrowEdge: .top) {
            DatePickerPopover(selectedDates: $selectedDates)
        }
    }
    
    private var dateSelectionView: some View {
        HStack(spacing: 10) {
            Image(systemName: "calendar.circle")
                .resizable()
                .frame(width: 24, height: 24)
            VStack(alignment: .leading) {
                Text("\(formattedDate(addedDays: 0)), 10:00")
                Text("\(formattedDate(addedDays: 2)), 10:00")
            }
            Spacer()
            Button {
                isDatePickerPresented.toggle()
            } label: {
                Text("Change")
                    .font(.headline)
                    .fontWeight(.bold)
            }
        }
    }
}

struct DatePickerPopover: View {
    @Binding var selectedDates: Set<DateComponents>
    @State private var start: Double = 10
    @State private var end: Double = 10
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                handleIndicator
                dateHeaderView
                Divider().padding(.bottom)
                datePicker
                Divider().padding(.top)
                sliders
                saveButton
                Spacer()
            }
            .padding(.vertical)
        }
        .scrollIndicators(.hidden)
    }
    
    private var handleIndicator: some View {
        Rectangle()
            .frame(width: 60, height: 5)
            .foregroundStyle(Color(.systemGray5))
            .padding(.vertical)
    }
    
    private var dateHeaderView: some View {
        let today = Date()
        let tomorrow = Calendar.current.date(byAdding: .day, value: 2, to: Date()) ?? Date()
        
        return HStack {
            VStack {
                Text(today, style: .date)
                    .fontWeight(.bold)
                Text("10:00")
            }
            Spacer()
            Image(systemName: "arrowshape.forward.fill")
            Spacer()
            VStack {
                Text(tomorrow, style: .date)
                    .fontWeight(.bold)
                Text("10:00")
            }
        }
        .font(.footnote)
        .padding(.horizontal)
    }
    
    private var datePicker: some View {
        MultiDatePicker("Select Dates", selection: $selectedDates, in: Date()...)
            .frame(height: 300)
            .padding(.horizontal)
    }
    
    private var sliders: some View {
        VStack(spacing: 15) {
            slider(label: "Start: 10", value: $start)
            slider(label: "End: 10", value: $end)
        }
        .padding(.horizontal)
    }
    
    private func slider(label: String, value: Binding<Double>) -> some View {
        HStack {
            Text(label)
                .font(.footnote)
                .foregroundStyle(.gray)
            Slider(value: value, in: 0...24)
        }
    }
    
    private var saveButton: some View {
        Button(action: {
            // Add your save action here
        }) {
            Text("Save")
                .foregroundStyle(.white)
                .frame(width: UIScreen.main.bounds.width - 35, height: 45)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        .padding(.top)
    }
}

#Preview {
    TripDateView()
}
