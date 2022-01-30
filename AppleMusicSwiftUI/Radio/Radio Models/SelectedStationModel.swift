//
//  SelectedStationModel.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 29.01.2022.
//

import Foundation

struct SelectedStationModel: Hashable {
    var id = UUID()
    var type: String
    var name: String
    var description: String
    var image: String
}

var selectedStatiions = [
    SelectedStationModel(type: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", name: "Чилаут", description: "Станция AppleMusic", image: "bigradio1"),
    SelectedStationModel(type: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", name: "Поп-музыка", description: "Станция AppleMusic", image: "bigradio2"),
    SelectedStationModel(type: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", name: "Танцевальная музыка", description: "Станция AppleMusic", image: "bigradio3"),
    SelectedStationModel(type: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", name: "Хиты", description: "Станция AppleMusic", image: "bigradio4"),
    SelectedStationModel(type: "ИЗБРАННАЯ РАДИОСТАНЦИЯ", name: "Хип-хоп", description: "Станция AppleMusic", image: "bigradio5")
]
