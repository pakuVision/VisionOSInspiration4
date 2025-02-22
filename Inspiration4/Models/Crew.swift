//
//  Crew.swift
//  Inspiration4
//
//  Created by boardguy.vision on 2025/02/20.
//

import Foundation

enum Crew: String, Identifiable, CaseIterable, Equatable {
    case jared
    case haley
    case chris
    case sian
    
    var id: Self { self }
    
    var name: String { rawValue.lowercased() }

    var fullName: String {
        switch self {
        case .jared:
            return "Jared Isaacman"
        case .haley:
            return "Hayley Arceneaux"
        case .chris:
            return "Chris Sembroski"
        case .sian:
            return "Dr. Sian Proctor"
        }
    }
    
    var about: String {
        switch self {
        case .jared:
            return "Jared Isaacman is the founder and CEO of Shift4 Payments (NYSE: FOUR), the leader in integrated payment processing solutions."
        case .haley:
            return "When Hayley was 10 years old, one of her knees began to ache. Her doctor thought it was just a sprain, but a few months later, tests revealed Hayley suffered from osteosarcoma, a type of bone cancer."
        case .chris:
            return "Chris Sembroski grew up with a natural curiosity about outer space. Stargazing late at night on the roof of his high school and launching high-powered model rockets in college cemented this passion. "
        case .sian:
            return "Dr. Sian Proctor is a geoscientist, explorer, and science communication specialist with a lifelong passion for space exploration."
        }
    }
}
