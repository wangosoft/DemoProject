//
//  FruitModel.swift
//
//  Created by Onur GÜLER on 16.12.2021.
//

import Foundation

struct SeriesModel: Decodable {
    var id: String
    var name: String
    var image: String?
    var description: String?
}

struct SeriesModelResponse: Decodable {
    var series: [SeriesModel]
}
