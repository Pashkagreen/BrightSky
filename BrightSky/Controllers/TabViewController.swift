//
//  TabViewController.swift
//  BrightSky
//
//  Created by Paul Grin on 24/02/2024.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstTab = WeatherViewController()
        firstTab.title = "Weather"
        
        let secondTab = SettingsViewController()
        secondTab.title = "Settings"
        
        let firstNavigator = UINavigationController(rootViewController: firstTab)
        let secondNavigator = UINavigationController(rootViewController: secondTab)
        
        firstNavigator.tabBarItem = UITabBarItem(title: "Weather", image: UIImage(systemName: "cloud.sun"), tag: 1)
        secondNavigator.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 2)
        
        self.setViewControllers([firstNavigator, secondNavigator], animated: true)
    }
}
