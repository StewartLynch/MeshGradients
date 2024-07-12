//
//  AdimationDemoView.swift
//  MeshGradients
//
//  Created by Stewart Lynch on 2024-07-10.
//

import SwiftUI

struct AnimationDemoView: View {
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var colors: [Color] = AppData.randomColors()
    var body: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: AppData.points,
            colors: colors
        )
        .ignoresSafeArea(edges: .bottom)
        .onReceive(timer, perform: { _ in
            withAnimation(.easeInOut(duration: 3)) {
                colors = AppData.randomColors()
            }
        })
            .navigationTitle("Animation Demo")
    }
}
#Preview {
    AnimationDemoView()
}
