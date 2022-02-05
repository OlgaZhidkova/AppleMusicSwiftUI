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
    
    static let example = SearchCategoryModel(image: "category1", title: "Хип-хоп на русском")
}

var searchCategories = [
    SearchCategoryModel(image: "category1", title: "Хип-хоп на русском"),
    SearchCategoryModel(image: "category2", title: "Пространственное аудио"),
    SearchCategoryModel(image: "category3", title: "Поп на русском"),
    SearchCategoryModel(image: "category4", title: "Поп"),
    SearchCategoryModel(image: "category5", title: "Хиты"),
    SearchCategoryModel(image: "category6", title: "Хорошее настроение"),
    SearchCategoryModel(image: "category7", title: "Хиты на русском"),
    SearchCategoryModel(image: "category8", title: "Рок на русском"),
    SearchCategoryModel(image: "category9", title: "Чарты"),
    SearchCategoryModel(image: "category10", title: "DJ-миксы")
]


