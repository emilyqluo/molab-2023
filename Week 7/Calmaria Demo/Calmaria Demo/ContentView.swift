//
//  ContentView.swift
//  Calmaria Demo
//
//  Created by Emily Luo on 11/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var scale = 0.5

    @State var time = 0
    @State var round = 0
    @State var remainingTime = 0
    @State var isTimerRunning = false
    @State private var timer: Timer?
    
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                ZStack {
                    // Circles That animated
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color.yellow, Color.orange, Color.red, Color.pink], startPoint: .top, endPoint: .bottom)
                        )
                        .padding()
                        .scaleEffect(scale)
                        .onTapGesture {
                            startTimer(4, 1)
                        }
                    
                    // Half Circle to create blur effect
                    Circle()
                        .trim(from: 0, to: 0.5)
                        .fill(
                            LinearGradient(colors: [Color.yellow, Color.orange, Color.red, Color.pink], startPoint: .top, endPoint: .bottom)
                        )
                        .blur(radius: 30)
                        .padding()
                        .scaleEffect(scale)

                    VStack {
                        Spacer()
                        
                        VisualEffectView(effect: UIBlurEffect(style: .dark))
                            .edgesIgnoringSafeArea(.all)
                            .frame(height: proxy.size.height / 2)
                    }

                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay {
                    overlay
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
    
    // Create Overlay Layout Design 
    var overlay: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("Focus/\nBreathe/\nRelax/")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("\(round.numbers())")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            
            Spacer()
            
            HStack(alignment: .bottom) {
                Text("Tap\nCircle\nto Start")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("\(remainingTime.numbers())")
                    .font(.title)
                    .fontWeight(.semibold)
            }
        }
        .padding()
        .foregroundColor(.white)
    }
    
    
    
    // Create a function for Timer that animate circle
    func startTimer(_ num: Int, _ size: Float) {
        remainingTime = num
        
        withAnimation(.easeIn(duration: TimeInterval(num))) {
            scale = Double(size)
        }
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            
            if remainingTime > 0 {
                remainingTime -= 1
            } else {
                timer?.invalidate()
                
                switch num {
                    // Add cases for inHeal Hold Exhale and Hold again
                case 4:
                    startTimer(7, 1)
                case 7:
                    startTimer(8, 0.5)
                case 8:
                    round += 1
                    startTimer(4, 1)
                default:
                    startTimer(0, 0)
                }
            }
        })
    }
}

#Preview {
    ContentView()
}
