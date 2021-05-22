//
//  HomeCollectionViewModel.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/23.
//

import Foundation
import UIKit

struct HomeCollectionViewModel {
    let image: UIImage
    let title: String
    let contents: String
    
    
    init(imageName : String,
         title: String,
         contents: String) {
        
        
        self.title = title
        self.contents = contents
        
        if let image = UIImage(named: imageName)
        {
            self.image = image
        }
        else
        {
            self.image = UIImage()
        }
    }
}
