//
//  ListOrdersViewController.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import UIKit

class ListOrdersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [
        .init(id: "id", name: "Burak Cevizli", dish: .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id", name: "Amine Mtired", dish: .init(id: "id1", name: "Beans and Garri", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id", name: "Nour Issa", dish: .init(id: "id1", name: "Rice and Stew", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id", name: "Kemal Kılıçdaroğlu", dish: .init(id: "id1", name: "Fried Yam", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registerCells()
    }
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
