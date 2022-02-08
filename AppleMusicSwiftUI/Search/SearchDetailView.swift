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
                VStack(spacing: 5) {
                    Text(category.title)
                        .font(.largeTitle).bold()
                        .lineLimit(2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                    HighlightsView(items: selectedMusic[category.tag])

                    HStack {
                        Text("Плейлисты")
                            .font(.title2).bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Button("См. все") {}
                        .foregroundColor(.red)
                    }
                    .padding(.horizontal)
                    
                    HorizontalMusicListView(items: musicPlaylists[category.tag])
                }
            }
            .padding(.bottom, 80)
    }
}

struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView(category: SearchCategoryModel.example)
    }
}
