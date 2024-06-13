//
//  ViewController.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 5/29/24.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initializeViewController()
    }
    
    private func initializeViewController() {
        let memoViewController = MemoViewController()
        memoViewController.setTabBarItem()
        let tunerViewController = TunerViewController()
        tunerViewController.setTabBarItem()
        let settingViewController = SettingViewController()
        settingViewController.setTabBarItem()
        
        self.viewControllers = [memoViewController, tunerViewController, settingViewController]
    }
}
