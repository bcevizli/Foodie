//
//  DishDetailViewController.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import UIKit
import ProgressHUD

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
        guard let name = nameField.text?.trimmingCharacters(in: .whitespaces), !name.isEmpty else {
            ProgressHUD.showError("Please enter your name")
            return
        }
        ProgressHUD.show("Placeing Order...")
        NetworkService.shared.placeOrder(dishId: dish.id ?? "", name: name) { (result) in
            switch result {
            case .success(_):
                ProgressHUD.showSuccess("Your order has been received. 👨🏻‍🍳")
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
    }
}
