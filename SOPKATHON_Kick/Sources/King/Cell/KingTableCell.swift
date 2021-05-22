//
//  KingTableCell.swift
//  SOPKATHON_Kick
//
//  Created by 김루희 on 2021/05/23.
//

import UIKit
import SnapKit

class KingTableCell: UITableViewCell {
    
    static let identifier = "KingTableCell"
    
    //MARK: - Property
    
    let lineView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 224.0 / 255.0, alpha: 1.0)
        return view
    }()
    
    let crownImageView : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "icCrown")
        return image
    }()
    
    let kingRankLabel : UILabel = {
        let label = UILabel()
        label.text = "1"
        label.font = UIFont.roboto(size: 25, family: .Bold)
        label.textColor = UIColor(white: 0.0, alpha: 1.0)
        return label
    }()
    
    let kingTitleLabel : UILabel = {
        let label = UILabel()
        label.text = "제목제목제목제목"
        label.font = UIFont.roboto(size: 15, family: .Bold)
        label.textColor = UIColor(white: 0.0, alpha: 1.0)
        return label
    }()
    
    let kingContentLabel : UILabel = {
        let label = UILabel()
        label.text = "두줄입니다두줄입니다두줄입니다두줄입니다두줄입니다두줄입니다두줄입니다두줄입니다두줄입니다두줄"
        label.font = UIFont.roboto(size: 13, family: .Medium)
        label.textColor = UIColor(white: 130.0 / 255.0, alpha: 1.0)
        label.numberOfLines = 2
        return label
    }()
    
    
    
    //MARK: - UI 관련
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        addSubview(lineView)
        addSubview(crownImageView)
        addSubview(kingRankLabel)
        addSubview(kingTitleLabel)
        addSubview(kingContentLabel)
        
        lineView.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.leading.equalTo(9)
            make.trailing.equalTo(-9)
            make.height.equalTo(0.7)
        }
        
        crownImageView.snp.makeConstraints { (make) in
            make.top.equalTo(lineView.snp.bottom).offset(22.7)
            make.leading.equalTo(19)
        }

        kingRankLabel.snp.makeConstraints { (make) in
            make.top.equalTo(lineView.snp.bottom).offset(31.7)
            make.leading.equalTo(18)
            make.bottom.equalTo(-24.7)
        }
        
        kingTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(lineView.snp.bottom).offset(13.7)
            make.leading.equalTo(kingRankLabel.snp.trailing).offset(37)
            make.trailing.equalTo(-17)
        }
        
        kingContentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(kingTitleLabel.snp.bottom).offset(6)
            make.leading.equalTo(kingRankLabel.snp.trailing).offset(37)
            make.bottom.equalTo(-12.7)
            make.trailing.equalTo(-17)
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
