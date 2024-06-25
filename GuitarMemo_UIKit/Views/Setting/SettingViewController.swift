//
//  SettingViewController.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 6/5/24.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setTabBarItem() {
        self.view.backgroundColor = .white
        self.title  = "Setting"
        self.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(systemName: "gear"), tag: 2)
    }
}
