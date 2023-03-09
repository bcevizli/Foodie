//
//  String+Extension.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 9.03.2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
