//
//  ContentView.swift
//  ImageVisualizer
//
//  Created by Milo Ullman on 18/10/26.
//

import SwiftUI

struct ImageVisualizer: View {
    var pixels: [[(Int, Int, Int)]]
    
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
            ForEach(0..<pixels.count) { row in
                GridRow {
                    ForEach(0..<pixels[row].count) { col in
                        let red = pixels[row][col].0
                        let green = pixels[row][col].1
                        let blue = pixels[row][col].2
                        let color = Color(red: Double(red) / 256, green: Double(green) / 256, blue: Double(blue) / 256).opacity(1)
                        Rectangle()
                            .foregroundStyle(color)
                            .frame(width: 1, height: 1)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
//    let pixels = (0..<100).map { _ in
//        (0..<128).map { _ in
//            (Int.random(in: 0..<256), Int.random(in: 0..<256), Int.random(in: 0..<256))
//        }
//    }
    
    ImageVisualizer(pixels: )
}
