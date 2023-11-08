//
//  ClockView.swift
//  Time
//
//  Created by Emily Luo on 11/8/23.
//

import SwiftUI

struct ClockView: View {
    let timeZone: TimeZone

    var body: some View {
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.timeStyle = .short

        let currentTime = formatter.string(from: Date())

        return VStack {
            Text(timeZone.identifier)
                .font(.title)
                .foregroundColor(Color.blue)
            Text(currentTime)
                .font(.largeTitle)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
