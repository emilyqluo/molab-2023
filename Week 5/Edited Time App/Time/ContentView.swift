//
//  ContentView.swift
//  Time
//
//  Created by Emily Luo on 11/8/23.
//

// ContentView.swift

import SwiftUI

struct ContentView: View {
    let worldTimeZones: [TimeZone] = [
        TimeZone(identifier: "America/New_York")!,
        TimeZone(identifier: "Europe/London")!,
        TimeZone(identifier: "Asia/Tokyo")!,
        TimeZone(identifier: "Australia/Sydney")!
    ]

    var body: some View {
        TabView {
            NavigationView {
                WorldClockView(timeZones: worldTimeZones)
                    .navigationBarTitle("World Clocks", displayMode: .large)
            }
            .tabItem {
                Label("World Clocks", systemImage: "globe")
            }
        }
    }
}
