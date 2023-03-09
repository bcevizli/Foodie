//
//  CategoryCollectionViewCell.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)

    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var categoryTitle: UILabel!
    
    func setup(category: DishCategory) {
        categoryTitle.text = category.name
        categoryImageView.kf.setImage(with: category.image?.asUrl)
    }
}
