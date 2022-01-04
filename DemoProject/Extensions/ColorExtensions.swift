//
//  ColorExtensions.swift
//
//  Created by Onur GÜLER on 28.12.2021.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat, opacity: CGFloat = 1.0) {
        self.init(red: CGFloat(red) / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: opacity)
    }
}
