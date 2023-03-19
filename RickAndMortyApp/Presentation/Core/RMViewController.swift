//
//  RMViewController.swift
//  RickAndMortyApp
//
//  Created by Azizbek Asadov on 18/03/23.
//

import UIKit

@objc
protocol RMViewController: AnyObject {
    var rootView: UIView { get }
    
    @objc optional func setupUI()
    @objc optional func setupLayout()
}
