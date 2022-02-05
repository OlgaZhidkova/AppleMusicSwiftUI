//
//  OptionModel.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 20.01.2022.
//

import SwiftUI

struct LibraryListModel: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var title: String
}

var libraryList = [
    LibraryListModel(icon: "music.note.list", title: "Плейлисты"),
    LibraryListModel(icon: "music.mic", title: "Артисты"),
    LibraryListModel(icon: "rectangle.stack", title: "Альбомы"),
    LibraryListModel(icon: "music.note", title: "Песни"),
    LibraryListModel(icon: "tv", title: "Телешоу и фильмы"),
    LibraryListModel(icon: "music.note.tv", title: "Видеоклипы"),
    LibraryListModel(icon: "guitars", title: "Жанры"),
    LibraryListModel(icon: "person.crop.rectangle.stack", title: "Сборники"),
    LibraryListModel(icon: "music.quarternote.3", title: "Авторы"),
    LibraryListModel(icon: "arrow.down.circle", title: "Загружено"),
    LibraryListModel(icon: "music.note.house", title: "Домашняя коллекция")
]





