//
//  Coin.swift
//  MetaMaskSwiftUI
//
//  Created by Raphael Cerqueira on 04/12/21.
//

import Foundation

struct Coin: Identifiable {
    let id = UUID().uuidString
    let image: String
    let amount: Double
    let name: String
    let dollar: String
}

let coins = [
    Coin(image: "eth", amount: 1, name: "ETH", dollar: "$4,097.51"),
    Coin(image: "mana", amount: 1, name: "MANA", dollar: "$4.17"),
    Coin(image: "sand", amount: 1, name: "SAND", dollar: "$6.15"),
]
