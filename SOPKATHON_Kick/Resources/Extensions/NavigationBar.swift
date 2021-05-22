//
//  NavigationBar.swift
//  SOPKATHON_Kick
//
//  Created by 김루희 on 2021/05/23.
//

import Foundation
import UIKit
import SnapKit

class NavigationBar: UIView {
    
    //MARK: - Property
    
    let naviView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 1.0, green: 108.0 / 255.0, blue: 108.0 / 255.0, alpha: 1.0)
        return view
    }()
    
    let backButton : UIButton = {
        let btn = UIButton()
//        btn.backgroundColor = .white
        btn.setImage(UIImage(named: "btnBack"), for: .normal)
        btn.addTarget(self, action: #selector(goback(_:)), for: .touchUpInside)
        return btn
    }()
    
    let navititleLabel : UILabel = {
        let label = UILabel()
        label.text = "킥 전당"
        label.font = UIFont.roboto(size: 18, family: .Bold)
        label.textColor = UIColor(white: 1.0, alpha: 1.0)
        return label
    }()
    
    let subtitleLabel : UILabel = {
        let label = UILabel()
        label.text = "인기있는 킥 살펴보세요"
        label.font = UIFont.roboto(size: 11, family: .Regular)
        label.textColor = UIColor(white: 1.0, alpha: 1.0)
        return label
    }()
    
    //MARK: - UI 관련
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(naviView)
        addSubview(backButton)
        addSubview(navititleLabel)
        addSubview(subtitleLabel)
        
        naviView.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(105)
        }
        
        backButton.snp.makeConstraints { (make) in
            make.top.equalTo(naviView.snp.top).offset(55.9)
            make.leading.equalTo(naviView.snp.leading).offset(13.8)
            make.height.equalTo(24.1)
            make.width.equalTo(18.5)
        }
        
        navititleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(naviView.snp.top).offset(58)
            make.leading.equalTo(backButton.snp.trailing).offset(3.8)
        }
        
        subtitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(navititleLabel.snp.bottom).offset(5)
            make.leading.equalTo(naviView.snp.leading).offset(36)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    //MARK: - 뒤로가기 관련 함수
    
    @objc func goback(_ button: UIButton) {
//        self.navigation
    }
    
}
