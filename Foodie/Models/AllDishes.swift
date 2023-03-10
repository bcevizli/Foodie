//
//  AllDishes.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 10.03.2023.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
