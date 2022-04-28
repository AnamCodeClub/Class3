//
//  CustomTableViewCell.swift
//  Class3
//
//  Created by 이용준 on 2022/04/29.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    var customLabel = UILabel()
    static let id = "CustomTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initView()
        print("hhhh")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    private func initView() {
        contentView.addSubview(customLabel)
        customLabel.textColor = .black
        customLabel.translatesAutoresizingMaskIntoConstraints = false
        customLabel.textAlignment = .center
        customLabel.font = .systemFont(ofSize: 72)
        NSLayoutConstraint.activate([
            customLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            customLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            customLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            customLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
        
    }
}
