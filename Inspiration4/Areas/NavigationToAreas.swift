//
//  NavigationToAreas.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/20.
//

import SwiftUI

struct NavigationToAreas: View {
    
    @Environment(ViewModel.self) var viewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcom To The Inspiration 4 Mission By SpaceX")
                .monospaced()
                .font(.system(size: 30, weight: .bold))
                .padding(.top, 250)
            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
            
                        switch area {
                        case .astronauts:
                            CrewAreaView(title: area.title)
                        case .equipment:
                            EquipmentAreaView()
                                .environment(viewModel)
                        case .mission:
                            CrewAreaView(title: area.title)
                        }
                        
                    } label: {
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(.title)
                    }
                }
            }
        }
        .background(
            Image("Inspiration4")
                
        )
    }
}

#Preview {
    NavigationToAreas()
}
