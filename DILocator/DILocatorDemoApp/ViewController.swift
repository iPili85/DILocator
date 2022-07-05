//
//  ViewController.swift
//  DILocatorDemoApp
//
//  Created by Pilar Millán on 28/3/22.
//

import UIKit

class ViewController: UIViewController {

    @DILocator(\.httpProvider) var httpProvider: HTTPProvider
    @DILocator(\.localStorage) var localStorage: LocalStorage

    override func viewDidLoad() {
        super.viewDidLoad()
        
        httpProvider.request()
        localStorage.save()
    }
}

