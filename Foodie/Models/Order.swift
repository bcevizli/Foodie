//
//  Order.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import Foundation

struct Order: Decodable {
    let id: String?
    let name: String?
    let dish: Dish?
}
