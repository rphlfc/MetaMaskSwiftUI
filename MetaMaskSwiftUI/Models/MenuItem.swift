//
//  MenuItem.swift
//  MetaMaskSwiftUI
//
//  Created by Raphael Cerqueira on 04/12/21.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
}

let menuItems = [
    MenuItem(image: "arrow.down.to.line.alt", title: "Receber"),
    MenuItem(image: "creditcard", title: "Comprar"),
    MenuItem(image: "arrow.up.right", title: "Enviar"),
    MenuItem(image: "arrow.left.arrow.right", title: "Swap")
]
