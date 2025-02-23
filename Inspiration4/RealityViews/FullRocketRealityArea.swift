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
    @State private var audioController: AudioPlaybackController?
    
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Immersive", in: realityKitContentBundle) else {
                fatalError("Cannot find a Immersive")
            }
            
            let ambientAudioEntity = entity.findEntity(named: "AmbientAudio")
            
            guard let resource = try? await AudioFileResource(named: "/Root/Space_wav", from: "Immersive.usda", in: realityKitContentBundle) else {
                fatalError("Cannot find Space_wav")
            }
            audioController = ambientAudioEntity?.prepareAudio(resource)
            audioController?.play()
            
            content.add(entity)
        }
        .onDisappear {
            audioController?.stop()
        }
    }
}
