//
//  MemoViewController.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 6/5/24.
//

import UIKit

struct DummyData {
    var id = UUID()
    var title: String
    var content: String
    var image: String
}

class PracticeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: UI - 작성하기 버튼
    private lazy var postingButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(systemName: "plus"),
                                     style: .plain,
                                     target: self,
                                     action: #selector(postButtonTapped))
        button.tintColor = .black
        return button
    }()
    
    // MARK: 연습일지 목록
    private lazy var practiceTableView: UITableView = {
        var tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.separatorColor = .systemGray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    var dummyData: [DummyData] = [
        DummyData(title: "제목", content: "fldaksjflkjd", image: "pencil"),
        DummyData(title: "제목2", content: "fldaksjflkjd", image: "pencil.tip"),
        DummyData(title: "제목3", content: "fldaksjflkjd", image: "plus.rectangle.on.folder.fill"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = self.postingButton
        self.view.backgroundColor = .white
        
        practiceTableView.register(PracticeListCell.self, forCellReuseIdentifier: PracticeListCell.reuseIdentifier)
        
        setConstraint()
    }
    
    private func setConstraint() {
        self.view.addSubview(practiceTableView)
        
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            practiceTableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            practiceTableView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            practiceTableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            practiceTableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        ])
    }
    
    @objc 
    private func postButtonTapped() {
        let postViewController = PostViewController()
        postViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
}

// MARK: TableView extension
extension PracticeViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = PracticeListCell(style: .default, reuseIdentifier: PracticeListCell.reuseIdentifier)
        let data = self.dummyData[indexPath.row]
        let image = UIImage(systemName: data.image)
        cell.configuration(title: data.title, contents: data.content, image: image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

#Preview {
    UINavigationController(rootViewController: PracticeViewController())
}
