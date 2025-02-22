//
//  CrewAreaView.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/21.
//

import SwiftUI

struct CrewAreaView: View {
    
    let title: String

    var body: some View {

        VStack {
            Text(title)
                .monospaced()
                .font(.system(size: 40, weight: .bold))
            HStack {
                ForEach(Crew.allCases) { crew in
                    VStack(alignment: .leading) {
                        Image("crew-\(crew.name)")
                            .resizable()
                            .frame(width: 180, height: 200)
                        Text(crew.fullName)
                            .font(.system(size: 22, weight: .bold))
                        Text(crew.about)
                            .font(.system(size: 20))
                    }
                    .frame(minWidth: 180, minHeight: 200)
                    .padding(20)
                    .glassBackgroundEffect()
                }
            }
        }
        .padding(20)
    }
}

#Preview {
    CrewAreaView(title: "")
}
