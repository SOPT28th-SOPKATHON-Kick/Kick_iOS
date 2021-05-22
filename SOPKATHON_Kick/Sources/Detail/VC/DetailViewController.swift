//
//  DetailViewController.swift
//  SOPKATHON_Kick
//
//  Created by 김루희 on 2021/05/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK: - Property
    
    let naviBar = NavigationBar()
    
    let profileImageView : UIImageView = {
        let image = UIImageView()
        //        image.image = UIImage(named: "")
        image.backgroundColor = .blue
        return image
    }()
    
    let profileNameLabel : UILabel = {
        let label = UILabel()
        label.text = "킥받러"
        label.font = UIFont.roboto(size: 14, family: .Bold)
        label.textColor = UIColor(white: 0.0, alpha: 1.0)
        return label
    }()
    
    let viewcountLabel : UILabel = {
        let label = UILabel()
        label.text = "조회 700"
        label.font = UIFont.roboto(size: 11, family: .Regular)
        label.textColor = UIColor(white: 169.0 / 255.0, alpha: 1.0)
        return label
    }()
    
    let dotImageView : UIImageView = {
        let image = UIImageView()
        //        image.image = UIImage(named: "")
        image.backgroundColor = .blue
        return image
    }()
    
    let hourLabel : UILabel = {
        let label = UILabel()
        label.text = "1시간 전"
        label.font = UIFont.roboto(size: 11, family: .Regular)
        label.textColor = UIColor(white: 169.0 / 255.0, alpha: 1.0)
        return label
    }()
    
    let lineView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 196.0 / 255.0, alpha: 1.0)
        return view
    }()
    
    let contentTableView = UITableView()
    
    
    let bottomView : UIView = {
        let view = UIView()
        view.layer.shadowRadius = 4.0
        view.layer.shadowOpacity = 0.15
        view.backgroundColor = .white
        return view
    }()
    
    let bookmarkButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
//        button.setImage(UIImage(named: ""), for: .normal)
        return button
    }()
    
    let kickButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
//        button.setImage(UIImage(named: ""), for: .normal)
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTableView.backgroundColor = .white
        
        contentTableView.separatorStyle = .none
        contentTableView.delegate = self
        contentTableView.dataSource = self
        contentTableView.register(ContentTableCell.self, forCellReuseIdentifier: "ContentTableCell")
        
        naviBar.navititleLabel.text = "킥 보기"
        naviBar.subtitleLabel.text = "ㅋㅋㅋㅋㅋㅋㅋ킼킼"
        configureUI()

    }
    
    
    
    //MARK: - UI 관련
    
    func configureUI() {
        
        view.addSubview(naviBar)
        view.addSubview(profileImageView)
        view.addSubview(profileNameLabel)
        view.addSubview(viewcountLabel)
        view.addSubview(dotImageView)
        view.addSubview(hourLabel)
        view.addSubview(lineView)
        view.addSubview(contentTableView)
        view.addSubview(bottomView)
        view.addSubview(bookmarkButton)
        view.addSubview(kickButton)
        
        naviBar.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(105)
        }
        
        profileImageView.snp.makeConstraints { (make) in
            make.top.equalTo(naviBar.snp.bottom).offset(17)
            make.leading.equalTo(18)
            make.height.width.equalTo(30)
        }
        
        profileNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(naviBar.snp.bottom).offset(16)
            make.leading.equalTo(profileImageView.snp.trailing).offset(11)
        }
        
        viewcountLabel.snp.makeConstraints { (make) in
            make.top.equalTo(profileNameLabel.snp.bottom).offset(5)
            make.leading.equalTo(profileImageView.snp.trailing).offset(11)
        }
        
        dotImageView.snp.makeConstraints { (make) in
            make.top.equalTo(profileNameLabel.snp.bottom).offset(9)
            make.trailing.equalTo(viewcountLabel.snp.trailing).offset(8)
        }
        
        hourLabel.snp.makeConstraints { (make) in
            make.top.equalTo(profileNameLabel.snp.bottom).offset(5)
            make.leading.equalTo(dotImageView.snp.trailing).offset(9)
        }
        
        lineView.snp.makeConstraints { (make) in
            make.top.equalTo(profileImageView.snp.bottom).offset(14.7)
            make.leading.equalTo(18.5)
            make.trailing.equalTo(-18)
            make.height.equalTo(0.7)
        }
        
        contentTableView.snp.makeConstraints { (make) in
            make.top.equalTo(lineView.snp.bottom).offset(0)
            make.leading.equalTo(0)
            make.bottom.equalTo(bottomView.snp.top)
            make.trailing.equalTo(0)
        }
        
        bottomView.snp.makeConstraints { (make) in
            make.leading.bottom.trailing.equalToSuperview()
            make.height.equalTo(83)
        }
        
        bookmarkButton.snp.makeConstraints { (make) in
            make.top.equalTo(bottomView.snp.top).offset(12)
            make.leading.equalTo(bottomView.snp.leading).offset(18)
            make.height.width.equalTo(42)
        }
        
        kickButton.snp.makeConstraints { (make) in
            make.top.equalTo(bottomView.snp.top).offset(12)
            make.trailing.equalTo(bottomView.snp.trailing).offset(-18)
        }
        
    }
    
}

//MARK: - Extension

extension DetailViewController : UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        let height = UIScreen.main.bounds.height
//        return CGFloat(height)
//    }
}

extension DetailViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContentTableCell", for: indexPath) as? ContentTableCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        return cell
    }
    
    
}
