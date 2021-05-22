//
//  KingViewController.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/22.
//

import UIKit
import SnapKit

class KingViewController: UIViewController {
    
    //MARK: - Property
    
//    let kingArray =
    
    let naviBar = NavigationBar()
    
    let kingTableView = UITableView(frame: .zero, style: .grouped)
    
    //MARK: - Lifecycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kingTableView.delegate = self
        kingTableView.dataSource = self
        kingTableView.register(KingTableCell.self, forCellReuseIdentifier: "KingTableCell")
        
        kingTableView.separatorStyle = .none
        kingTableView.backgroundColor = .white
        
        configureUI()
    }
    
    //MARK: - UI 관련
    
    func configureUI() {
        
        view.addSubview(kingTableView)
        view.addSubview(naviBar)

        
        naviBar.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(105)
        }
        
        kingTableView.snp.makeConstraints { (make) in
            make.top.equalTo(naviBar.snp.bottom)
            make.leading.bottom.trailing.equalToSuperview()
        }
        
    }
}

//MARK: - Extension


extension KingViewController : UITableViewDelegate {
    
}

extension KingViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "KingTableCell", for: indexPath) as? KingTableCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = KingHeaderView()
        header.backgroundColor = .white
        return header
    }
    
    
}
