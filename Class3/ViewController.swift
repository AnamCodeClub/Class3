//
//  ViewController.swift
//  Class3
//
//  Created by 이용준 on 2022/04/28.
//

import UIKit

class ViewController: UIViewController {
    private var tableViewButton = UIButton()
    private var collectionViewButton = UIButton()
    private var nameList = ["이용준", "전동혁", "이호영", "김남오", "김재형", "기타 등등"] + Array(repeating: "test", count: 100)

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    private func initView() {
        view.addSubview(tableViewButton)
        tableViewButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableViewButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            tableViewButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 72),
            tableViewButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -72),
            tableViewButton.heightAnchor.constraint(equalToConstant: 80)
        ])
        tableViewButton.setTitle("테이블 뷰로 가는 버튼", for: .normal)
        tableViewButton.addTarget(self, action: #selector(tableViewButtonAction(_:)), for: .touchUpInside)
        tableViewButton.backgroundColor = .blue.withAlphaComponent(0.72)
        tableViewButton.layer.masksToBounds = true
        tableViewButton.layer.cornerRadius = 32
        
        view.addSubview(collectionViewButton)
        collectionViewButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionViewButton.topAnchor.constraint(equalTo: tableViewButton.bottomAnchor, constant: 24),
            collectionViewButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 72),
            collectionViewButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -72),
            collectionViewButton.heightAnchor.constraint(equalToConstant: 80)
        ])
        collectionViewButton.setTitle("컬렉션 뷰로 가는 버튼", for: .normal)
    }
    
    
    @objc func tableViewButtonAction(_ sender: UIButton) {
        self.navigationController?.pushViewController(TableViewController(nameList), animated: true)
    }
}



