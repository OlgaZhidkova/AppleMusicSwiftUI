//
//  SearchCategoryModel.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 01.02.2022.
//

import SwiftUI

struct SearchCategoryModel: Hashable {
    var id = UUID()
    var image: String
    var title: String
    var tag: Int
    
    static let example = SearchCategoryModel(image: "category1", title: "Хип-хоп на русском", tag: 0)
}

var searchCategories = [
    SearchCategoryModel(image: "category1", title: "Хип-хоп на русском", tag: 0),
    SearchCategoryModel(image: "category2", title: "Пространственное аудио", tag: 1),
    SearchCategoryModel(image: "category3", title: "Поп на русском", tag: 2),
    SearchCategoryModel(image: "category4", title: "Поп", tag: 3),
    SearchCategoryModel(image: "category5", title: "Хиты", tag: 4),
    SearchCategoryModel(image: "category6", title: "Хорошее настроение", tag: 5),
    SearchCategoryModel(image: "category7", title: "Хиты на русском", tag: 6),
    SearchCategoryModel(image: "category8", title: "Рок на русском", tag: 7),
    SearchCategoryModel(image: "category9", title: "Чарты", tag: 8),
    SearchCategoryModel(image: "category10", title: "DJ-миксы", tag: 9)
]


