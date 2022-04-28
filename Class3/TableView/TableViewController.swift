//
//  TableViewController.swift
//  Class3
//
//  Created by 이용준 on 2022/04/29.
//

import Foundation
import UIKit


class TableViewController: UIViewController, DomainProtocol {
    
    private var list: [String]
    private var tableView = UITableView()
    
    init(_ nameList: [String]) {
        self.list = nameList
        super.init(nibName: nil, bundle: nil)
    }
     
    required init?(coder: NSCoder) {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        printDomain()
    }
    
    
    private func initView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
        ])
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.id)
    }
}


extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.id) as? CustomTableViewCell else { return UITableViewCell() }
        cell.backgroundColor = .white
        cell.customLabel.text = list[indexPath.row]
//        if indexPath.row % 3 == 0 {
//            cell.backgroundColor = .red
//        } else if indexPath.row % 3 == 1 {
//            cell.backgroundColor = .yellow
//        }
        
        return cell
    }
    
}

