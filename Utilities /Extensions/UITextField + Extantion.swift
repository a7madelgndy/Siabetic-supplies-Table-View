//
//  UITextField + Extantion.swift
//  MProject
//
//  Created by Ahmed El Gndy on 29/11/2024.
//

import Foundation
import UIKit
extension UITextField {
    func custom(placeHolder: TextField ,
                font : Fonts = .Regular ,
                color :Colors = .C2E2E2E ,
                size: Sizes = .size_14,
                text: String = "",
                isPassword: Bool = false) {
        self.font = UIFont(name: font.rawValue.localized , size: size.rawValue)
        self.textColor = UIColor(named: color.rawValue)
        self.placeholder = placeHolder.rawValue.localized
        self.isSecureTextEntry = isPassword
    
    }

}
