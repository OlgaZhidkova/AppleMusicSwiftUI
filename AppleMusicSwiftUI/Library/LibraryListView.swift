//
//  MediaListView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 19.01.2022.
//

import SwiftUI

struct LibraryListView: View {
    
    @State var selection: Set<LibraryListModel> = []
    @State var options = libraryList
   
    var body: some View {
        
        List(selection: $selection) {
            ForEach(options) { option in
                LibraryListCell(option: option)
            }
            .onMove(perform: move)
            .listRowBackground(Color.white)
        }
        .environment(\.editMode, .constant(.active))
        .accentColor(.red)
        
        .listStyle(.plain)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        self.options.move(fromOffsets: source, toOffset: destination)
    }
}

struct MediaListView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryListView()
    }
}

