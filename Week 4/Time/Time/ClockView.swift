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
        // Create a date formatter with the specified time zone
        let formatter = DateFormatter()
        formatter.timeZone = timeZone
        formatter.timeStyle = .short
        
        // Get the current time in the given time zone
        let currentTime = formatter.string(from: Date())
        
        // Create a VStack to display the time zone identifier and the current time
        return VStack {
            Text("\(timeZone.identifier)")
                .font(.title)
            Text(currentTime)
                .font(.title)
        }
    }
}
