//
//  ContentTableCell.swift
//  SOPKATHON_Kick
//
//  Created by 김루희 on 2021/05/23.
//

import UIKit
import SnapKit

class ContentTableCell: UITableViewCell {
    
    static let identifier = "ContentTableCell"
    
    //MARK: - Property
        
    let uiview : UIView = {
        let view = UIView()
        return view
    }()
    
    let contentLabel : UILabel = {
        let label = UILabel()
        label.text = "내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용"
        label.font = UIFont.roboto(size: 15, family: .Medium)
        label.textColor = UIColor(white: 0.0 / 255.0, alpha: 1.0)
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - UI 관련
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(uiview)
        uiview.addSubview(contentLabel)
        
        
        uiview.snp.makeConstraints { (make) in
            make.top.equalTo(22.7)
            make.leading.equalTo(19)
            make.bottom.equalTo(-22.7)
            make.trailing.equalTo(-18)
            
        }
        
        contentLabel.snp.makeConstraints { (make) in
            make.top.leading.bottom.trailing.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
