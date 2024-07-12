//
//  Introduction.swift
//  MeshGradients
//
//  Created by Stewart Lynch on 2024-07-10.
//

import SwiftUI

struct Introduction: View {
    var body: some View {
        NavigationStack {
            MeshGradient(
                width: 3,
                height: 4,
                points: [
                    [0,0], [0.5, 0.5], [1.0, 0],
                    [0,0.33], [0.5, 0], [1.0, 0.33],
                    [0,0.67], [0.25, 0.75], [1.0, 0.67],
                    [0,1.0], [0.25, 0.5], [1.0, 1.0],
                ],
                colors: [
                    .red, .blue, .green,
                    .teal, .orange, .yellow,
                    .purple, .cyan, .indigo,
                    .mint, .black, .white
                ],
                background: .green.opacity(0.2),
                smoothsColors: false
            )
            .shadow(color: .gray, radius: 15)
            .ignoresSafeArea(edges: .bottom)
                .navigationTitle("Introduction")
        }
    }
}

#Preview {
    Introduction()
}
