//
//  ContentView.swift
//  MeshGradients
//
//  Created by Stewart Lynch on 2024-07-10.
//

import SwiftUI

struct StartTab: View {
    var body: some View {
        TabView {
            Tab("Introduction", systemImage: "1.circle.fill") {
                Introduction()
            }
            Tab("Experiment", systemImage: "2.circle.fill") {
                Experiment()
            }
            Tab("Animation", systemImage: "3.circle.fill") {
                NavigationStack {
                    AnimationDemoView()
                        .navigationTitle("Animation Demo")
                }
            }
            Tab("Background", systemImage: "4.circle.fill") {
                CustomBackgrounds()
            }
        }
    }
}

#Preview {
    StartTab()
}
