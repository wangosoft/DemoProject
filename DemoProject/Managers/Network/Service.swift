//
//  Service.swift
//
//  Created by Onur GÜLER on 17.12.2021.
//

import Foundation
import UIKit

protocol ServiceProtocol {
    func getList(completion: @escaping (_ response: CartListModelResponse?, _ error: NetworkError?) -> Void)
    func loadImage(urlString: String, completion: @escaping (UIImage?) -> Void)
}

final class Service: ServiceProtocol {
    static let shared: Service = Service()
    
    func getList(completion: @escaping (_ response: CartListModelResponse?, _ error: NetworkError?) -> Void) {
        Network.shared.request(httpMethod: .get, urlString: ServiceConstants.Url.cartList) { (result: Result<CartListModelResponse?, NetworkError>) in
            switch result {
            case .success(let cartListModelResponse):
                completion(cartListModelResponse, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
        
    func loadImage(urlString: String, completion: @escaping (UIImage?) -> Void) {
        Network.shared.loadImage(urlString: urlString) { image in
            completion(image)
        }
    }
    
}

