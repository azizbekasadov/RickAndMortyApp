//
//  RMTabBarAssembly.swift
//  RickAndMortyApp
//
//  Created by Azizbek Asadov on 18/03/23.
//

import UIKit

struct RMTabBarAssembly: Assembly {
    func assemble() -> RMTabBarController {
        let modules: [UIViewController] = RMTabBarType.allCases.map {
            switch $0 {
            case .character:
                return RMCharacterViewController().withNavigation()
            case .episodes:
                return RMEpisodeViewController().withNavigation()
            case .location:
                return RMLocationViewController().withNavigation()
            case .settings:
                return RMSettingsViewController().withNavigation()
            }
        }
        
        let tabBarViewController = RMTabBarController()
        tabBarViewController.setupViewControllers(modules)
        return tabBarViewController
    }
}

enum RMTabBarType: CaseIterable {
    case character
    case settings
    case location
    case episodes
    
    var order: UInt {
        switch self {
        case .character:
            return 0
        case .settings:
            return 3
        case .location:
            return 2
        case .episodes:
            return 1
        }
    }
}
