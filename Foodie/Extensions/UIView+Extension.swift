//
//  UIView+Extension.swift
//  Foodie
//
//  Created by Adem Burak Cevizli on 8.03.2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
