//
//  Router.swift
//  DemoProject
//
//  Created by Onur GÜLER on 4.01.2022.
//

import Foundation
import UIKit

final class Router {
    static let shared: Router = Router()
    
    func initRootViewController(window: UIWindow?, controller: BaseViewController) {
        let navigationController = BaseNavigationViewController(rootViewController: controller)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
