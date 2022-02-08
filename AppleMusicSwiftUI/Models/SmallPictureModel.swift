//
//  LargePictureModel.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 29.01.2022.
//

import SwiftUI

struct SmallPictureModel: Hashable, Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var description: String
}

var radioStations = [
    SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
    SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
    SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
    SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
    SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
    SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио")
]

var musicPlaylists = [
    [
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио")
    ],
    
    [
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио"),
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века")
    ],
    
    [
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио"),
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио")
    ],
    
    [
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио"),
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио")
    ],
    
    [
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио"),
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка")
    ],
    
    [
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио"),
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио")
    ],
    
    [
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио"),
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио")
    ],
    
    [
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио"),
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио")
    ],
    
    [
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио")
    ],
    
    [
        SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
        SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
        SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
        SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
        SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио"),
        SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века")
    ]
]

var searchMusic = [
    SmallPictureModel(image: "smallradio1", name: "Музыка 2.0", description: "Музыка XXI века"),
    SmallPictureModel(image: "smallradio2", name: "John Legend и другие", description: "Радио"),
    SmallPictureModel(image: "smallradio3", name: "Веселая музыка", description: "Радио"),
    SmallPictureModel(image: "smallradio4", name: "Американская эстрада", description: "Классическая джазовая музыка"),
    SmallPictureModel(image: "smallradio5", name: "Billie Eilish", description: "Радио"),
    SmallPictureModel(image: "smallradio6", name: "Станция: Boston", description: "Радио")
]



