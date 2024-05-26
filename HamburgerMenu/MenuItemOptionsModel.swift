//
//  MenuItemOptionsModel.swift
//  HamburgerMenu
//
//  Created by kaushal kumar on 21/05/24.
//

import Foundation

enum MenuItemOptionsModel: Int, CaseIterable {
    case home
    case weather
    case maps
    case gaming
    case transport
    case fitness
    case nature
    case health
    case media
    case privacy
    
    
    var title: String {
        switch self {
         
        case .home:
            return "Home"
        case .weather:
            return "Weather"
        case .maps:
            return "Maps"
        case .gaming:
            return "Gaming"
        case .transport:
            return "Transport"
        case .fitness:
            return "Fitness"
        case .nature:
            return "Nature"
        case .health:
            return "Health"
        case .media:
            return "Media"
        case .privacy:
            return "Privacy"
        }
    }
    
    var systemImageName: String {
        switch self {
            
        case .weather:
            return "cloud.sun"
        case .maps:
            return "map"
        case .gaming:
            return "gamecontroller"
        case .transport:
            return "bus"
        case .fitness:
            return "figure.run"
        case .nature:
            return "leaf"
        case .health:
            return "heart"
        case .media:
            return "playpause"
        case .privacy:
            return "lock"
        case .home:
            return "house"
        }
    }
    
    
}

extension MenuItemOptionsModel: Identifiable {
    var id: Int {
        return self.rawValue
    }
    
    
}
