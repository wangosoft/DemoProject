//
//  SliderCollectionViewCell.swift
//  DemoProject
//
//  Created by Onur GÜLER on 4.01.2022.
//

import UIKit

class SliderCollectionViewCell: BaseCollectionViewCell {

    @IBOutlet weak var imgView: BaseImageView!
    @IBOutlet weak var nameLabel: BaseLabel!
    @IBOutlet weak var priceLabel: BaseLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
