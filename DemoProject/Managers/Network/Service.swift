//
//  Service.swift
//
//  Created by Onur GÜLER on 17.12.2021.
//

import Foundation
import UIKit

protocol ServiceProtocol {
    func getSeries(completion: @escaping (_ response: SeriesModelResponse?, _ error: NetworkError?) -> Void)
}

final class Service: ServiceProtocol {
    static let shared: Service = Service()
        
    func getSeries(completion: @escaping (_ response: SeriesModelResponse?, _ error: NetworkError?) -> Void) {
        Network.shared.request(httpMethod: .get, urlString: ServiceConstants.Url.series) { (result: Result<SeriesModelResponse?, NetworkError>) in
            switch result {
            case .success(let seriesModelResponse):
                completion(seriesModelResponse, nil)
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

