//
//  MemoViewController.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 6/5/24.
//

import UIKit

class MemoViewController: UIViewController {
    private lazy var postingButton: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "Post",
                                     style: .plain,
                                     target: self,
                                     action: #selector(postButtonTapped))
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.postingButton
    }
    
    func setTabBarItem() {
        self.tabBarItem = UITabBarItem(title: "Memo", image: UIImage(systemName: "note.text"), tag: 0)
    }
    
    @objc
    private func postButtonTapped() {
        let postViewController = PostViewController()
        postViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
}
