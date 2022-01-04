//
//  ListViewModel.swift
//
//  Created by Onur GÜLER on 17.12.2021.
//

import Foundation

class ListViewModel: BaseViewModel {
    var loadSeries: (([SeriesModel])->())?
    
    func getSeries() {
        Service.shared.getSeries { response, error in
            if let series = response?.series {
                self.loadSeries?(series)
            } else {
                self.showError?(error)
            }
        }
    }
}

