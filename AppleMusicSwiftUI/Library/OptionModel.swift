//
//  OptionModel.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 20.01.2022.
//

import SwiftUI

struct OptionModel: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var title: String
}

var libraryOptions = [
    OptionModel(icon: "music.note.list", title: "Плейлисты"),
    OptionModel(icon: "music.mic", title: "Артисты"),
    OptionModel(icon: "rectangle.stack", title: "Альбомы"),
    OptionModel(icon: "music.note", title: "Песни"),
    OptionModel(icon: "tv", title: "Телешоу и фильмы"),
    OptionModel(icon: "music.note.tv", title: "Видеоклипы"),
    OptionModel(icon: "guitars", title: "Жанры"),
    OptionModel(icon: "person.crop.rectangle.stack", title: "Сборники"),
    OptionModel(icon: "music.quarternote.3", title: "Авторы"),
    OptionModel(icon: "arrow.down.circle", title: "Загружено"),
    OptionModel(icon: "music.note.house", title: "Домашняя коллекция")
]





