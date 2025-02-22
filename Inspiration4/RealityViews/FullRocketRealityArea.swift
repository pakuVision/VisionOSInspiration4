//
//  FullRocketRealityArea.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/22.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {
    
    @Environment(ViewModel.self) private var viewModel

    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Immersive", in: realityKitContentBundle) else {
                fatalError("Cannot find a Immersive")
            }
            
            content.add(entity)
        }
    }
}
