//
//  AreasView.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/20.
//

import SwiftUI

struct AreasView: View {
    
    @Environment(ViewModel.self) var viewModel
    
    var body: some View {
        ZStack {
            NavigationStack {
                NavigationToAreas()
                    .environment(viewModel)
            }
        }
    }
}

#Preview {
    AreasView()
}
