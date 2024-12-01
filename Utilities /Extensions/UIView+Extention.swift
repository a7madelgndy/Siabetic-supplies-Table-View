//
//  UIView+Extention.swift
//  MProject
//
//  Created by Ahmed El Gndy on 16/11/2024.
//

import UIKit

extension UIView {
    func addBorder( color:Colors, width:CGFloat = 1 ){
        self.layer.borderColor = UIColor(named: color.rawValue)?.cgColor
        self.layer.borderWidth = width
    }
}
