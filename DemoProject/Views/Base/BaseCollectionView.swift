//
//  BaseCollectionView.swift
//  DemoProject
//
//  Created by Onur GÜLER on 4.01.2022.
//

import UIKit

class BaseCollectionView: UICollectionView {

    var collectionViewType: CollectionViewType = .none

}
 
enum CollectionViewType {
    case list
    case slider
    case none
}

