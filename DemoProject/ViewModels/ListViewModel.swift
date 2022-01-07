//
//  ListViewModel.swift
//
//  Created by Onur GÜLER on 17.12.2021.
//

import Foundation

class ListViewModel: BaseViewModel {
    var loadList: (([CartListModel])->())?
    
    func getList() {
        Service.shared.getList { [weak self] response, error in
            DispatchQueue.main.async {
                if let cartList = response?.products {
                    self?.loadList?(cartList)
                } else {
                    self?.showError?(error)
                }
            }
        }
    }
}

