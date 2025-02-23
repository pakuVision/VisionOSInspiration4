//
//  MissionAreaView.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/23.
//

import SwiftUI
import AVKit

struct MissionAreaView: View {
    
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Inspiration4", withExtension: "mp4")!)
    @State var isPlaying = true
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
            Button {
                isPlaying ? player.play() : player.pause()
                isPlaying.toggle()
                player.seek(to: .zero)
            } label: {
                Image(systemName: isPlaying ? "play" : "stop")
                    .padding(5)
            }
        }
        .onAppear {
            isPlaying = true
        }
        .onDisappear {
            player.pause()
        }
    }
}
