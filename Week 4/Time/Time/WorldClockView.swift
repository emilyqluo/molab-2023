//
//  WorldClockView.swift
//  Time
//
//  Created by Emily Luo on 11/8/23.
//

// WorldClockView.swift

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        List {
            ClockView(timeZone: TimeZone(identifier: "America/New_York")!)
            ClockView(timeZone: TimeZone(identifier: "Europe/London")!)
            ClockView(timeZone: TimeZone(identifier: "Asia/Tokyo")!)
            ClockView(timeZone: TimeZone(identifier: "Australia/Sydney")!)
            // Add more ClockView instances for other time zones if needed
        }
        .navigationTitle("World Clocks")
    }
}
