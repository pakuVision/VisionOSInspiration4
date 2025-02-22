//
//  EquipmentAreaView.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/22.
//

import SwiftUI

struct EquipmentAreaView: View {
    
    @Environment(ViewModel.self) var viewModel
    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) var dismissWindow
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
        @Bindable var model = self.viewModel
        
        var toggleCapsuleTitle: String {
            model.isShowingRocketCapsule ? "Hide Rocket Capsule" : "Show Rocket Capsule"
        }
        
        var toggleRocketTitle: String {
            model.isShowingRocket ? "Hide Full Rocket" : "Show Full Rocket"
        }
    
        HStack {
            VStack {
                Image("equipment-capsule")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                
                Toggle(toggleCapsuleTitle, isOn: $model.isShowingRocketCapsule)
                    .onChange(of: model.isShowingRocketCapsule) { _, isShow in
                        Task { @MainActor in
                            if isShow {
                                openWindow(id: "CapsuleRealityArea")
                            } else {
                                dismissWindow(id: "CapsuleRealityArea")
                            }
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }
            .glassBackgroundEffect()
            
            VStack {
                Image("equipment-fullrocket")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                
                Toggle(toggleRocketTitle, isOn: $model.isShowingRocket)
                    .onChange(of: model.isShowingRocket) { _, isShow in
                        Task { @MainActor in
                            if isShow {
                                await openImmersiveSpace(id: "FullRocketRealityArea")
                            } else {
                                await dismissImmersiveSpace()
                            }
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }
            .glassBackgroundEffect()
        }
    }
}

#Preview {
    EquipmentAreaView()
        .environment(ViewModel())
}
