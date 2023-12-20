//
//  ContentView.swift
//  Random
//
//  Created by Emily Luo on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Set the background color to black
            Color.black.edgesIgnoringSafeArea(.all)

            // Create a ForEach loop to generate multiple random shapes
            ForEach(0..<10, id: \.self) { _ in
                RandomShapeView()
            }
        }
    }
}

struct RandomShapeView: View {
    // Define an array of possible colors for the random shapes
    let shapeColors: [Color] = [.red, .green, .blue, .orange, .purple, .yellow]

    var body: some View {
        // Generate random properties for each shape
        let randomX = CGFloat.random(in: 0..<UIScreen.main.bounds.width)
        let randomY = CGFloat.random(in: 0..<UIScreen.main.bounds.height)
        let randomSize = CGFloat.random(in: 50...200)
        let randomRotation = Angle.degrees(Double.random(in: 0...360))
        let randomColor = shapeColors.randomElement() ?? .white

        // Return an Ellipse with random properties
        return AnyView(
            Ellipse()
                .fill(randomColor)
                .frame(width: randomSize, height: randomSize)
                .position(x: randomX, y: randomY)
                .rotationEffect(randomRotation)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
