//
//  RadioStationModel.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 29.01.2022.
//

import SwiftUI

struct RadioStationModel: Hashable {
    var id = UUID()
    var image: String
    var name: String
    var description: String
}

var radioStations = [
    RadioStationModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
    RadioStationModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
    RadioStationModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
    RadioStationModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
    RadioStationModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
    RadioStationModel(image: "smallradio6", name: "Станция: Boston", description: "Радио")
]



