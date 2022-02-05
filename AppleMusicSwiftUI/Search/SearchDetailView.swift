//
//  SearchDetailView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 05.02.2022.
//

import SwiftUI

struct SearchDetailView: View {
    
    var category: SearchCategoryModel
    
    var body: some View {
            ScrollView(.vertical, showsIndicators: true) {
                HighlightsView(items: selectedMusic)

                HStack {
                    Text("Плейлисты")
                        .font(.title2).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button("См. все") {}
                    .foregroundColor(.red)
                }
                .padding(.horizontal)
                
                HorizontalPlaylistView(playlists: searchPlaylists)
            }
            .padding(.bottom, 80)
    }
}

struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView(category: SearchCategoryModel.example)
    }
}
