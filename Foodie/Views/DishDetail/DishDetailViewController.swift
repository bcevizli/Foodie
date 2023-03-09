//
//  DishDetailViewController.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import UIKit

class DishDetailViewController: UIViewController {
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var dishTitleLabel: UILabel!
    @IBOutlet weak var dishCaloriesLabel: UILabel!
    @IBOutlet weak var dishDescriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateView()
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        dishTitleLabel.text = dish.name
        dishDescriptionLabel.text = dish.description
        dishCaloriesLabel.text = dish.formattedCalories
        
    }
    
    @IBAction func placeOrderButtonTapped(_ sender: UIButton) {
    }
}
