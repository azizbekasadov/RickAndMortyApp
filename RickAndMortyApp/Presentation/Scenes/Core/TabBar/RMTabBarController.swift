//
//  RMTabBarController.swift
//  RickAndMortyApp
//
//  Created by Azizbek Asadov on 18/03/23.
//

import UIKit

final class RMTabBarController: UITabBarController {
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = .systemBackground
    }
    
    func setupViewControllers(_ modules: [UIViewController]) {
        setViewControllers(modules, animated: false)
    }
}
