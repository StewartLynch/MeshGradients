//
//  Experiment.swift
//  MeshGradients
//
//  Created by Stewart Lynch on 2024-07-10.
//

import SwiftUI

enum AppData {
    static var points: [SIMD2<Float>] = [
        [0, 0], [0.5, 0], [1.0, 0],
        [0, 0.5], [0.5, 0.5], [1.0, 0.5],
        [0, 1.0], [0.5, 1.0], [1.0, 1.0]
    ]
    
    static var colors: [Color] = [
        .purple, .cyan, .mint, .teal, .indigo
    ]
    
    static func randomColors() -> [Color] {
        (0...8).map {_ in colors.randomElement()!}
    }
}
struct Experiment: View {
    @State private var colors: [Color] = AppData.randomColors()
    var body: some View {
        NavigationStack {
            MeshGradient(
                width: 3,
                height: 3,
                points: AppData.points,
                colors: colors
            )
            .ignoresSafeArea(edges: .bottom)
            .toolbar {
                Button {
                    colors = AppData.randomColors()
                    print(String(describing: colors))
                } label: {
                    Image(systemName: "arrow.3.trianglepath")
                }
                .font(.title)
            }
                .navigationTitle("Experiment")
        }
    }
}

#Preview {
    Experiment()
}
