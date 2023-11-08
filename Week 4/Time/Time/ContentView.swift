//
//  ContentView.swift
//  Time
//
//  Created by Emily Luo on 11/8/23.
//

// ContentView.swift

// ContentView.swift

// ContentView.swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                WorldClockView()
                    .navigationTitle("World Clocks")
            }
            .tabItem {
                Label("World Clocks", systemImage: "globe")
            }
        }
    }
}
