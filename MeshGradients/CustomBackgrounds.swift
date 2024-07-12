//
//  CustomBackgrounds.swift
//  MeshGradients
//
//  Created by Stewart Lynch on 2024-07-10.
//

import SwiftUI

struct CustomBackgrounds: View {
    var body: some View {
        NavigationStack {
            ZStack {
                AnimationDemoView()
                    .opacity(0.4)
                VStack {
                    Text("Xcode is fun")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(
                            MeshGradient(
                                width: 3,
                                height: 3,
                                points: AppData.points,
                                colors: AppData.randomColors()
                            )
                        )
                    AnimationDemoView()
                        .frame(height: 200)
                        .mask {
                            Image(systemName: "applelogo")
                                .font(.system(size: 200))
                        }
                }
            }
                .navigationTitle("Custom Backgrounds")
        }
    }
}

#Preview {
    CustomBackgrounds()
}
