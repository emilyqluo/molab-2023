//
//  Task_ManagerApp.swift
//  Task Manager
//
//  Created by Emily Luo on 11/24/23.
//

import SwiftUI

@main
struct Task_ManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}
