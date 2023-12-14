//
//  CategoryModel.swift
//  Snacks App
//
//  Created by Emily Luo on 12/03/23.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "american", title: "American"),
    CategoryModel(icon: "japanese", title: "Japanese"),
    CategoryModel(icon: "chinese", title: "Chinese"),
    CategoryModel(icon: "korean", title: "Korean")
]
