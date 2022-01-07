//
//  BaseViewModel.swift
//
//  Created by Onur GÜLER on 16.12.2021.
//

import Foundation

class BaseViewModel {
    var showError: ((NetworkError?)->())?
    let service: ServiceProtocol
    
    init(service: ServiceProtocol = Service.shared) {
        self.service = service
    }
}
