//
//  FruitModel.swift
//
//  Created by Onur GÜLER on 16.12.2021.
//

import Foundation

struct CartListModel: Decodable {
    var product_id: String
    var name: String?
    var image: String?
    var price: Int?
}

struct CartListModelResponse: Decodable {
    var products: [CartListModel]
}
