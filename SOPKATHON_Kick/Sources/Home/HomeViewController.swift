//
//  HomeViewController.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/22.
//

import UIKit

class HomeViewController: UIViewController {
    
//    let naviBar = NavigationBar()

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var scrollViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var homePageControl: UIPageControl!
    var homeCollectionViewList: [HomeCollectionViewModel] = []
    var homeTableViewList: [HomeTableViewModel] = []
    var dateList : [DateElement] = []
//    var countList : [CountElement] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        view.addSubview(naviBar)

        topView.backgroundColor = .main_Color
        delegateSet()
        homeTableViewSet()
        homeCollectionViewSet()
        setScrollHeight()
        pageCtrlSet()
        getDate()
//        getCount()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
//        navigationController?.setNavigationBarHidden(true, animated: true)
//        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
//        navigationController?.setNavigationBarHidden(false, animated: true)
//        tabBarController?.tabBar.isHidden = false
    }
    
    func getDate()
    {
        RecentWriting.shared.getData { (result) in
            switch(result)
            {
            case .success(let dateObject):
                if let date = dateObject as? [DateElement]{
                    self.dateList = date
                    self.homeTableView.reloadData()
                }
            case .requestErr(_):
                return
            case .pathErr:
                return
            case .serverErr:
                return
            case .networkFail:
                return
            }
        }
    }
    
    func homeTableViewSet() {
        
        homeTableView.separatorStyle = .none
        homeTableView.allowsSelection = false
        homeTableViewList.append(contentsOf: [
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302),
            HomeTableViewModel(title: "테스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트", click: 32, minute: 15, like: 302)
        ])
    }
    
    func delegateSet() {
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
    }
    
    func homeCollectionViewSet() {
        homeCollectionViewList.append(contentsOf: [
            HomeCollectionViewModel(imageName: "", title: "테ㅔㅔ스트", contents: "테ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ테스트")
        ])
    }
    
    func setScrollHeight()
    {
        scrollViewHeightConstraint.constant = CGFloat(homeTableViewList.count * 80)
        homeTableView.reloadData()
    }
    
    func pageCtrlSet() {
        homePageControl.numberOfPages = homeCollectionViewList.count
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dateList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? HomeCollectionViewCell  else { return UICollectionViewCell() }
        cell.image.image = homeCollectionViewList[indexPath.row].image
        cell.title.text = homeCollectionViewList[indexPath.row].title
        cell.content.text = homeCollectionViewList[indexPath.row].contents
        
        return cell

    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dateList.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 91
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HomeTableViewCell  else { return UITableViewCell() }
        cell.title.text = dateList[indexPath.row].title
        cell.content.text = dateList[indexPath.row].contents
        cell.clickAndTime.text = "\(dateList[indexPath.row].timestamp)" + " 전"
        cell.like.text = "\(dateList[indexPath.row].kickCount)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
