//
//  UiButton+Extention.swift
//  MProject
//
//  Created by Ahmed El Gndy on 17/11/2024.
//

import UIKit

extension UIButton {
    func custom(title: ,
                size :Sizes = .size_14,
                font: Fonts = .Regular
              ){
        self.setTitle(title.rawValue.localized, for: .normal)
        self.backgroundColor = UIColor(named: bgColor.rawValue)
        self.setTitleColor(UIColor(named:titleColor.rawValue), for: .normal)
        self.titleLabel?.font = UIFont(name: font.rawValue.localized, size: size.rawValue) ?? UIFont()
    }
}
