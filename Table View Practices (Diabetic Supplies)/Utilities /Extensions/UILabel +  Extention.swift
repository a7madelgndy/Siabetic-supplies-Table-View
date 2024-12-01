//
//  UILabel +  Extention.swift
//  MProject
//
//  Created by Ahmed El Gndy on 29/11/2024.
//

import UIKit
import MOLH
extension UILabel {
     
    func custom(title: String , font : Fonts = .Regular, color :Colors ,size: Sizes = .size_14 ,NoOfline : Int = 1 , direction :Directions = .normal) {
        self.text = title
        self.font = UIFont(name: font.rawValue.localized , size: size.rawValue)
        self.textColor = UIColor(named: color.rawValue)
        self.numberOfLines = NoOfline
        switch direction {
        case .left: self.textAlignment = .left
        case .righ: self.textAlignment = .right
        case .center:self.textAlignment = .center
        case .normal: self.textAlignment = MOLHLanguage.isArabic() ?.right :  .left
        }
    
    }

}
