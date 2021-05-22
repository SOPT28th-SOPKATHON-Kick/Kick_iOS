//
//  HomeViewController.swift
//  SOPKATHON_Kick
//
//  Created by 한상진 on 2021/05/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var scrollViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var homePageControl: UIPageControl!
    var homeCollectionViewList: [HomeCollectionViewModel] = []
    var homeTableViewList: [HomeTableViewModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.backgroundColor = .main_Color
        delegateSet()
        homeTableViewSet()
        homeCollectionViewSet()
        setScrollHeight()
        pageCtrlSet()
    }
    
    func homeTableViewSet() {
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
        scrollViewHeightConstraint.constant = CGFloat(homeTableViewList.count * 59)
        homeTableView.reloadData()
    }
    
    func pageCtrlSet() {
        homePageControl.numberOfPages = homeCollectionViewList.count
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homeCollectionViewList.count
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
        
        return homeTableViewList.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 91
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HomeTableViewCell  else { return UITableViewCell() }
        cell.title.text = homeTableViewList[indexPath.row].title
        cell.content.text = homeTableViewList[indexPath.row].contents
        cell.clickAndTime.text = "조회 " + "\(homeTableViewList[indexPath.row].click)" + "•" + "\(homeTableViewList[indexPath.row].minute)" + " 전"
        cell.like.text = "\(homeTableViewList[indexPath.row].like)"
        return cell
    }
}
