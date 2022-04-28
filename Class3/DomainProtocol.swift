//
//  DomainProtocol.swift
//  Class3
//
//  Created by 이용준 on 2022/04/29.
//

import UIKit

protocol DomainProtocol {
    var domain: String { get }
}

extension DomainProtocol {
    var domain: String {
        "\(Self.self)"
    }
}

extension DomainProtocol where Self: UIViewController {

    func printDomain() {
        print("❤️ Domain is \(domain)")
    }
}
