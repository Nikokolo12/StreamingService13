//
//  ViewController.swift
//  FreeBookService
//
//  Created by User on 16.09.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // home search downloads account
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: BooksViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        let vc5 = UINavigationController(rootViewController: MoreViewController())
        
        self.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: true)
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "books.vertical")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        vc5.tabBarItem.image = UIImage(systemName: "ellipsis")
        
        vc1.tabBarItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15.0, weight: .regular)], for: .normal)
        vc2.tabBarItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15.0, weight: .regular)], for: .normal)
        vc3.tabBarItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15.0, weight: .regular)], for: .normal)
        vc4.tabBarItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15.0, weight: .regular)], for: .normal)
        vc5.tabBarItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15.0, weight: .regular)], for: .normal)
        
        tabBar.tintColor = .label
        
        vc1.title = "Home"
        vc2.title = "Books"
        vc3.title = "Search"
        vc4.title = "Downloads"
        vc5.title = "More"
    }

}

