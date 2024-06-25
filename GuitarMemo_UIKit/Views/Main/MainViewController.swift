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
        initializeViewController()
    }
    
    private func initializeViewController() {
        let memoNavigationViewController = setNaviagtionController(rootViewController: MemoViewController(), 
                                                                      title: "Memo",
                                                                      image: "note.text",
                                                                      tag: 0)
        let tunerNavigationViewcontroller = setNaviagtionController(rootViewController: TunerViewController(),
                                                                       title: "Tuner",
                                                                       image: "tuningfork",
                                                                       tag: 1)
        
        let settingNavigationViewcontroller = setNaviagtionController(rootViewController: SettingViewController(),
                                                                         title: "Setting",
                                                                         image: "gear",
                                                                         tag: 2)
        
        self.viewControllers = [memoNavigationViewController,
                                tunerNavigationViewcontroller,
                                settingNavigationViewcontroller]
        
        setTabbarColors(tintColor: "141414", unselectedTintColor: "a9a9a9")
    }
    
    /// setNaviagtionController
    /// ViewController를 NavigationContoller로 변환하는 메서드
    /// - Parameters:
    ///     - rootViewController: NavigationContoller로 변경할 ViewController
    ///     - title: TabbarItem의 title이 될 String
    ///     - image: TabberItem에서 사용될 UIImage(systemName:)에 들어갈 아이콘 명칭
    ///     - tag: TabbarItem에서 사용될 태그
    /// - Returns: UINavigationController가 Return됩니다.
    private func setNaviagtionController(rootViewController: UIViewController, title: String, image: String, tag: Int) -> UINavigationController {
        rootViewController.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: image), tag: tag)
        rootViewController.view.backgroundColor = .white
        let navContoller = UINavigationController(rootViewController: rootViewController)
        return navContoller
    }
    
    /// setTabbarColors
    /// - Parameters:
    ///     - tintColor: TabbarItem이 선택되었을 때의 hexcode
    ///     - unselectedTintColor: TabbarItem이 선택되지 않았을 때의 hexcode
    private func setTabbarColors(tintColor: String, unselectedTintColor: String) {
        self.tabBar.tintColor = UIColor(hexCode: tintColor)
        self.tabBar.unselectedItemTintColor = UIColor(hexCode: unselectedTintColor)
    }
}
