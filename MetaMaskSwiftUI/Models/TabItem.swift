//
//  TabItem.swift
//  MetaMaskSwiftUI
//
//  Created by Raphael Cerqueira on 04/12/21.
//

import Foundation

struct TabItem: Identifiable {
    let id = UUID().uuidString
    let title: String
}

let tabItems = [
    TabItem(title: "TOKENS"),
    TabItem(title: "NFTs")
]
