//
//  AppDelegate.swift
//  DemoProject
//
//  Created by Onur GÜLER on 4.01.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        initializeUI()
        
        return true
    }
    
    private func initializeUI() {
        window = UIWindow()
        Router.shared.initRootViewController(window: window, controller: MainViewController(nibName: .main))
    }

}

