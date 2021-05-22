//
//  HomeTableViewModel.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/23.
//

import Foundation
import UIKit

struct HomeTableViewModel {
    let title: String
    let contents: String
    let click: Int
    let minute: Int
    let like: Int
    
    
    init(title: String,
         contents: String,
         click: Int,
         minute: Int,
         like: Int) {
        
        self.title = title
        self.contents = contents
        self.click = click
        self.minute = minute
        self.like = like
    }
}
