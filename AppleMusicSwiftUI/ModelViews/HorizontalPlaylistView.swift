//
//  PlaylistView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 05.02.2022.
//

import SwiftUI

struct HorizontalPlaylistView: View {
    @State var playlists = [SmallPictureModel]()
    
    let rows: [GridItem] = Array(repeating: .init(.fixed(220)), count: 2)
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(playlists, id: \.self) { playlist in
                    VStack {
                        Image(playlist.image)
                            .resizable()
                            .frame(width: 170, height: 170, alignment: .leading)
                            .cornerRadius(5)
                        
                        Text(playlist.name)
                            .frame(maxWidth: 170, alignment: .leading)
                            .lineLimit(1)
                            .font(.headline)
                        
                        Text(playlist.description)
                            .frame(maxWidth: 170, alignment: .leading)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(1)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

//struct PlaylistView_Previews: PreviewProvider {
//    static var previews: some View {
//        HorizontalPlaylistView()
//    }
//}
