//
//  UIFont + Extension.swift
//  SOPKATHON_Kick
//
//  Created by 김루희 on 2021/05/23.
//

import Foundation
import UIKit

extension UIFont {
    
    enum Family: String {
        case Medium, Regular, Bold
    }
    
    static func roboto(size: CGFloat = 10, family: Family = .Regular) -> UIFont {
        return UIFont(name: "Roboto-\(family)", size: size)!
    }
}

