//
//  OffsetKey.swift
//  Task Manager
//
//  Created by Emily Luo on 11/24/23.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static let defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
