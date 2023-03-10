//
//  AppError.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 10.03.2023.
//

import Foundation

enum AppError: LocalizedError {
case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "Bruhhh! I have no idea"
        case .invalidUrl:
            return "Hey! Give me the valid URL"
        case .serverError(let error):
            return error
        }
    }
}
