//
//  Inspiration4App.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/20.
//

import SwiftUI

@main
struct Inspiration4App: App {

    @State private var viewModel = ViewModel()

    var body: some Scene {
        WindowGroup {
            AreasView()
                .environment(viewModel)
        }
        
        WindowGroup(id: "CapsuleRealityArea") {
            CapsuleRealityArea()
                .environment(viewModel)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: "FullRocketRealityArea") {
            FullRocketRealityArea()
                .environment(viewModel)
        }
        .immersionStyle(selection: .constant(.mixed), in: .full)
    }
}
