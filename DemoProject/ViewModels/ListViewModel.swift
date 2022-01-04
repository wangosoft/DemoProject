//
//  ListViewModel.swift
//
//  Created by Onur GÜLER on 17.12.2021.
//

import Foundation

class ListViewModel: BaseViewModel {
    func getSeries() {
        Service.shared.getSeries { response, error in
            if let series = response?.series {
               
            } else {
                
            }
        }
    }
}

