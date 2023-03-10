//
//  DishCategory.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import Foundation

struct DishCategory: Decodable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
