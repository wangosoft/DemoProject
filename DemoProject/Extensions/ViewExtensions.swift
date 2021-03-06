//
//  UIViewExtension.swift
//
//  Created by Onur GÜLER on 28.12.2021.
//

import UIKit

extension UIView {
    @IBInspectable var masksToBounds: Bool {
        get {
            return layer.masksToBounds
        }
        set {
            layer.masksToBounds = newValue
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: cornerRadius).cgPath
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

extension UIImageView {
    
    func imageFromUrl(_ url: String?) {
        if let url = url, !url.isEmpty {
            let serviceApi : ServiceProtocol = Service()
            serviceApi.loadImage(urlString: url) { image in
                if let img = image {
                    DispatchQueue.main.async {
                        self.image = img
                    }
                }
            }
        }
    }
    
}
