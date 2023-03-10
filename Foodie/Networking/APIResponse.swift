//
//  APIResponse.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 10.03.2023.
//

import Foundation

struct APIResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
