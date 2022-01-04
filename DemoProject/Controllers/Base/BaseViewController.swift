//
//  BaseViewController.swift
//
//  Created by Onur GÜLER on 28.12.2021.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    convenience init(nibName: NibName) {
        self.init(nibName: nibName.rawValue, bundle: Bundle.main)
    }
    
}
