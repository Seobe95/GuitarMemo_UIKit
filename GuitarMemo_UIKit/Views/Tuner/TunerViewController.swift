//
//  TunerViewController.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 6/5/24.
//

import UIKit

class TunerViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setTabBarItem() {
        self.view.backgroundColor = .white
        self.title  = "Tuner"
        self.tabBarItem = UITabBarItem(title: "Tuner", image: UIImage(systemName: "tuningfork"), tag: 1)
    }
}
