//
//  Assembly.swift
//  RickAndMortyApp
//
//  Created by Azizbek Asadov on 18/03/23.
//

import UIKit.UIViewController

protocol Assembly {
    associatedtype SceneViewController = UIViewController
    
    func assemble() -> SceneViewController
}
