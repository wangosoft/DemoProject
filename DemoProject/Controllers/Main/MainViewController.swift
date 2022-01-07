//
//  MainViewController.swift
//  DemoProject
//
//  Created by Onur GÜLER on 4.01.2022.
//

import UIKit

class MainViewController: BaseViewController {
    
    @IBOutlet weak var sliderView: SliderView!

    lazy var listViewModel: ListViewModel = {
        return ListViewModel()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initVM()
    }
    
    private func initUI() {
        self.title = Localize.Main.title
    }
    
    private func initVM() {
        listViewModel.getList()
        
        listViewModel.loadList = { [weak self] list in
            self?.sliderView.setup(list: list)
        }
        
        listViewModel.showError = { [weak self] error in
            
        }
    }

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
