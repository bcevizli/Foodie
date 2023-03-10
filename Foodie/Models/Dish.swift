//
//  Dish.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import Foundation

struct Dish: Decodable {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
    
}
