//
//  Dish.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import Foundation

struct Dish {
    let id, name, description, image: String?
    let calories: Double?
    
    var formattedCalories: String {
        return String(format: "%2f", calories ?? 0)
    }
    
}
