//
//  ContentView.swift
//  Arrow
//
//  Created by Tom Wu on 2023-10-26.
//

import SwiftUI

struct Arrow: Shape {
    func path(in rect: CGRect) -> Path {
        
        // Create a path
        var path = Path()
        
        // Define the path
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        // move to first point
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY/3*2))
        //add second path
        path.addLine(to: CGPoint(x: rect.maxX/3*2, y: rect.maxY/3*2))
        //add third path
        path.addLine(to: CGPoint(x: rect.maxX/3*2, y: rect.maxY))
        //add fourth line
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY/2))
        //add fifth line
        path.addLine(to: CGPoint(x: rect.maxX/3*2, y: rect.minY))
        //add sixth line
        path.addLine(to: CGPoint(x: rect.maxX/3, y: rect.maxY/3))
        //add seventh line
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY/3))
        //add eighth line
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY/3*2))
        
        // Return a path
        return path
    }
    
}

struct MainView: View {
    @State var selectedAngle: Double = 0.0
        
        var body: some View {
            
            VStack {
                Spacer()
                
                Arrow()
                    .aspectRatio(1.0, contentMode: .fit)
                    .rotationEffect(.degrees(selectedAngle))
                
                Spacer()
                
                Slider(value: $selectedAngle, in: 0...360)
            }
            .padding()
            
        }
}

#Preview {
    MainView()
}
