//
//  Area.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/20.
//

import Foundation

enum Area: String, Identifiable, CaseIterable, Equatable {
    case astronauts
    case equipment
    case mission
    
    var id: Self { self }
    var name: String { rawValue.lowercased() }
    
    var title: String {
        switch self {
        case .astronauts:
            "Inspiration 4 mission crew members..."
        case .equipment:
            "Inspiration 4 mission equipment..."
        case .mission:
            "Inspiration 4 mission trailer..."
        }
    }
}
