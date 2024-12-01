//
//  UILabel +  Extention.swift
//  MProject
//
//  Created by Ahmed El Gndy on 29/11/2024.
//

import UIKit
extension UILabel {
     
    func custom(title: String ,size: Sizes = .size_14 ) {
        self.text = title
        self.font = UIFont(name: "Helvetica", size: size.rawValue )
    }
}
