//
//  UIButtonExtension.swift
//  IOS-Calculator
//
//  Created by Mikel Valle on 27/9/22.
//

import UIKit

extension UIButton{
    // Borde redondo
       func round() {
           layer.cornerRadius = bounds.height / 2
           clipsToBounds = true
       }
    // Brillar
        func shine() {
            UIView.animate(withDuration: 0.2, animations: {
                self.alpha = 0.5
            }) { (completion) in
                UIView.animate(withDuration: 0.2, animations: {
                    self.alpha = 1
                })
            }
}
}
