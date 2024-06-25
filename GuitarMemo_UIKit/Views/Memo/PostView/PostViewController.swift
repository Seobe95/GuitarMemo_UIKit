//
//  PostViewController.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 6/25/24.
//

import UIKit

class PostViewController: UIViewController {
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "GGGG"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(textLabel)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = self.view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor)
        ])
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
