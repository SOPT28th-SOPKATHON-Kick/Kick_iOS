//
//  HomeCollectionViewCell.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UILabel!
    
    func setData(image : UIImage,
                 title : String,
                 content: String)
    {
        self.image.image = image
        self.title.text = title
        self.content.text = content
    }
}


