//
//  UIViewController+Extension.swift
//  RickAndMortyApp
//
//  Created by Azizbek Asadov on 18/03/23.
//

import UIKit

public extension UIViewController {
    func withNavigation() -> UINavigationController{
        return UINavigationController(rootViewController: self)
    }
}
