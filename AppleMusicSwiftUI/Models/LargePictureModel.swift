//
//  LargePictureModel.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 29.01.2022.
//

import Foundation

struct LargePictureModel: Hashable {
    var id = UUID()
    var type: String
    var name: String
    var description: String
    var image: String
}

var selectedStatiions = [
    LargePictureModel(type: "Избранная радиостанция", name: "Чилаут", description: "Станция AppleMusic", image: "bigradio1"),
    LargePictureModel(type: "Избранная радиостанция", name: "Поп-музыка", description: "Станция AppleMusic", image: "bigradio2"),
    LargePictureModel(type: "Избранная радиостанция", name: "Танцевальная музыка", description: "Станция AppleMusic", image: "bigradio3"),
    LargePictureModel(type: "Избранная радиостанция", name: "Хиты", description: "Станция AppleMusic", image: "bigradio4"),
    LargePictureModel(type: "Избранная радиостанция", name: "Хип-хоп", description: "Станция AppleMusic", image: "bigradio5")
]

var selectedMusic = [
    LargePictureModel(type: "Избранная радиостанция", name: "Чилаут", description: "Станция AppleMusic", image: "bigradio1"),
    LargePictureModel(type: "Избранная радиостанция", name: "Поп-музыка", description: "Станция AppleMusic", image: "bigradio2"),
    LargePictureModel(type: "Избранная радиостанция", name: "Танцевальная музыка", description: "Станция AppleMusic", image: "bigradio3"),
    LargePictureModel(type: "Избранная радиостанция", name: "Хиты", description: "Станция AppleMusic", image: "bigradio4"),
    LargePictureModel(type: "Избранная радиостанция", name: "Хип-хоп", description: "Станция AppleMusic", image: "bigradio5")
]
