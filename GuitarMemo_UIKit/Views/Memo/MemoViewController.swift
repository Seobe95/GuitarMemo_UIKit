//
//  MemoViewController.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 6/5/24.
//

import UIKit

class MemoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setTabBarItem() {
        self.view.backgroundColor = .white
        self.title = "Memo"
        self.tabBarItem = UITabBarItem(title: "Memo", image: UIImage(systemName: "note.text"), tag: 0)
    }
}
