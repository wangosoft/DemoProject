//
//  MainViewController.swift
//  DemoProject
//
//  Created by Onur GÜLER on 4.01.2022.
//

import UIKit

class MainViewController: BaseViewController {
    
    lazy var listViewModel: ListViewModel = {
        return ListViewModel()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        self.title = Localize.Main.title
    }
    
    private func initVM() {
        listViewModel.getSeries()
        
        listViewModel.loadSeries = { [weak self] series in
            
        }
        
        listViewModel.showError = { [weak self] error in
            
        }
    }

}
