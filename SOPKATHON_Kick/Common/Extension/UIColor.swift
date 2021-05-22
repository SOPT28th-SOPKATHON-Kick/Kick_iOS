//
//  UIColor.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/23.
//

import Foundation
import UIKit

extension UIColor {
    
    // MARK: hex 변환 가능 init
    convenience init(hex: UInt, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    class var main_Color: UIColor { UIColor(hex: 0xFF6C6C) }

    
}
