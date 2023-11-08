//
//  WorldClockView.swift
//  Time
//
//  Created by Emily Luo on 11/8/23.
//

// WorldClockView.swift

import SwiftUI

struct WorldClockView: View {
    let timeZones: [TimeZone]

    var body: some View {
        List(timeZones, id: \.identifier) { timeZone in
            ClockView(timeZone: timeZone)
                .padding(10)
        }
        .navigationTitle("World Clocks")
    }
}
