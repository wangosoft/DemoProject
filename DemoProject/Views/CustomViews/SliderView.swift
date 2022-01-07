//
//  SliderView.swift
//  DemoProject
//
//  Created by Onur GÜLER on 5.01.2022.
//

import UIKit

@IBDesignable
class SliderView: BaseView {
    
    @IBOutlet weak var collectionView: BaseCollectionView!
    
    var list: [CartListModel] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit(){
        let viewFromXib = Bundle.main.loadNibNamed(NibName.sliderView.rawValue, owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
        collectionView.register(UINib(nibName: NibName.sliderCollectionViewCell.rawValue, bundle: nil), forCellWithReuseIdentifier: NibName.sliderCollectionViewCell.rawValue)
    }
        
    func setup(list: [CartListModel]) {
        self.list = list
        collectionView.reloadData()
    }
}

extension SliderView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NibName.sliderCollectionViewCell.rawValue, for: indexPath) as! SliderCollectionViewCell
                    
        cell.nameLabel.text = list[indexPath.row].name ?? Localize.General.empty
        if let price = list[indexPath.row].price {
            cell.priceLabel.text = "\(price)"
        }
        
        cell.imgView.imageFromUrl(list[indexPath.row].image)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.bounds.size.width, height: self.bounds.size.height)
    }
    
}
