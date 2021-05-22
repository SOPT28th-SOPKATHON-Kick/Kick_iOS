//
//  WritingViewController.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/22.
//

import UIKit
import SnapKit

class WritingViewController: UIViewController, UITextViewDelegate {
    
    let naviBar = NavigationBar()
    
    let bottomImageView : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "imgBottom")
        return image
    }()
    
    @IBOutlet weak var contentTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        naviBar.backButton.addTarget(self, action: #selector(goback(_:)), for: .touchUpInside)

        view.addSubview(naviBar)
        view.addSubview(bottomImageView)
        
        bottomImageView.snp.makeConstraints { (make) in
            make.leading.bottom.trailing.equalTo(0)
        }
        

        
        self.contentTextView.delegate = self
        contentTextView.font = UIFont.roboto(size: 15, family: .Medium)
        contentTextView.text = "눌러서 내용을 입력해주세요."
        contentTextView.textColor = UIColor.init(red: 196/255, green: 196/255, blue: 196/255, alpha: 1)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
//        navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.navigationBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        tabBarController?.tabBar.isHidden = false
    }
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.init(red: 196/255, green: 196/255, blue: 196/255, alpha: 1) {
            textView.text = nil
            textView.textColor = UIColor.black
        }
        
    }
    // TextView Place Holder
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "제가 바로 PlaceHolder입니다."
            textView.textColor = UIColor.lightGray
        }
    }
    
    @objc func goback(_ button: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
}


