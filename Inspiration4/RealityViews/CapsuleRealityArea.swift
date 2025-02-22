//
//  CapsuleRealityArea.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/22.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct CapsuleRealityArea: View {
    
    @Environment(ViewModel.self) private var viewModel

    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Scene", in: realityKitContentBundle) else {
                fatalError("Cannot find the Scene")
            }

            content.add(entity)
        }
    }
}
