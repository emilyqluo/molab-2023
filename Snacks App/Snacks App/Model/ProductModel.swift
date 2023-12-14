//
//  ProductModel.swift
//  Snacks App
//
//  Created by Emily Luo on 12/02/23.
//

import SwiftUI

// Product Model
struct Product: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
}

// Sample Products
var productList = [
    Product(name: "Lay's Classic", category: "Chips", image: "lays", color: .yellow, price: 2),
    Product(name: "Hot Cheetos", category: "Chips", image: "hotcheetos", color: .pink, price: 2),
    Product(name: "Goldfish", category: "Crackers", image: "goldfish", color: .orange,  price: 2),
    Product(name: "Oreo Biscuits", category: "Sweets", image: "minioreos",color: .blue,  price: 2),
    Product(name: "Doritos", category: "Chips", image: "doritos", color: .red,  price: 2),
    Product(name: "Angie's Popcorn", category: "Popcorn", image: "boomchicka", color: .purple, price: 2),
    Product(name: "Cheez It", category: "Crackers", image: "cheez", color: .yellow, price: 2),
    Product(name: "Veggie Straws", category: "Chips", image: "veggie",color: .green,  price: 2),
    Product(name: "Welch's", category: "Sweets", image: "welchs",color: .blue,  price: 2),
    Product(name: "Fritos Original", category: "Chips", image: "fritos",color: .red,  price: 2),
]
