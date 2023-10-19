import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all) // Set the background color

            // Create a ForEach loop to generate multiple random shapes
            ForEach(0..<10, id: \.self) { _ in
                RandomShapeView()
            }
        }
    }
}

struct RandomShapeView: View {
    let shapeColors: [Color] = [.red, .green, .blue, .orange, .purple, .yellow]

    var body: some View {
        let randomX = CGFloat.random(in: 0..<UIScreen.main.bounds.width)
        let randomY = CGFloat.random(in: 0..<UIScreen.main.bounds.height)
        let randomSize = CGFloat.random(in: 50...200)
        let randomRotation = Angle.degrees(Double.random(in: 0...360))
        let randomColor = shapeColors.randomElement() ?? .white

        return AnyView(
            Ellipse()
                .fill(randomColor)
                .frame(width: randomSize, height: randomSize)
                .position(x: randomX, y: randomY)
                .rotationEffect(randomRotation)
        )
    }
}
