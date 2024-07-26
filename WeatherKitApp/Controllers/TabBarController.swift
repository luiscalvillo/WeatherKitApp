//
//  TabBarController.swift
//  WeatherKitApp
//
//  Created by Luis Calvillo on 7/25/24.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tab1 = WeatherVC()
        tab1.title = "Weather"
        
        let tab2 = SettingsVC()
        tab2.title = "Settings"
        
        let nav1 = UINavigationController(rootViewController: tab1)
        let nav2 = UINavigationController(rootViewController: tab2)
        
        nav1.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "cloud.sun"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 2)
        
        setViewControllers([
            nav1, nav2
        ], animated: true)
    }
}
