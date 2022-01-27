//
//  MediaListView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 19.01.2022.
//

import SwiftUI

struct LibraryListView: View {
    @State var selection = Set<UUID>()
    @State var options = libraryOptions
   
    var body: some View {
        
//        List(selection: $selection) {
//                    ForEach(options) { option in
//                        OptionCell(option: option)
//                    }
//                }

        List(selection: $selection) {
            ForEach(options, id: \.self) { option in
                HStack {
                    Image(systemName: option.icon)
                        .frame(width: 20, height: 20)
                        .foregroundColor(.red)
                    Text(option.title)
                }
            }
//            .onMove(perform: { indeces, offset in
//                withAnimation {
//                    options.move(fromOffsets: indeces, toOffset: offset)
//                }
//            })
            .onMove(perform: move)
        }
        
        
        .environment(\.editMode, .constant(.active))
        .accentColor(.red)
        .listStyle(.plain)
        
        
    }
    
    func move(from source: IndexSet,
              to destination: Int) {
        self.options.move(fromOffsets: source,
                          toOffset: destination)
    }
}


struct MediaListView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryListView()
    }
}

