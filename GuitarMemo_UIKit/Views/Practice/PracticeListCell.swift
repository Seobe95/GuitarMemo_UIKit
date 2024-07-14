//
//  MemoListCell.swift
//  GuitarMemo_UIKit
//
//  Created by 이명섭 on 7/3/24.
//

import UIKit

class PracticeListCell: UITableViewCell {
    static let cellName = "MemoListCell"
    static let reuseIdentifier = "memoCell"
    
    private var image: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(systemName: "gear")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var title: UILabel = {
        var label = UILabel()
        label.text = "제목입니다."
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var contents: UILabel = {
        var label = UILabel()
        label.text = "내용입니다."
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    private func setConstraint() {
        self.contentView.addSubview(image)
        self.contentView.addSubview(title)
        self.contentView.addSubview(contents)        
        self.contentView.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            image.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            image.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10),
            image.widthAnchor.constraint(equalToConstant: 64),
            image.heightAnchor.constraint(equalToConstant: 64),
            
            title.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            title.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            title.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            
            contents.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8),
            contents.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            contents.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16)
        ])
    }
    
    func configuration(title: String, contents: String, image: UIImage? = UIImage(systemName: "gear")) {
        self.title.text = title
        self.contents.text = contents
        self.image.image = image
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct PracticeListCell_Preview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            let cell = PracticeListCell(style: .default, reuseIdentifier: "memoCell")
            cell.configuration(title: "제목", contents: "gngngng", image: UIImage(systemName: "pencil"))
            return cell
        }
        .frame(height: 80)
        .previewLayout(.sizeThatFits)
    }
}
#endif
