//
//  PlaylistView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 05.02.2022.
//

import SwiftUI

struct HorizontalMusicListView: View {
    @State var items = [SmallPictureModel]()
    
    let rows: [GridItem] = Array(repeating: .init(.fixed(220)), count: 2)
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(items, id: \.self) { item in
                    VStack {
                        Image(item.image)
                            .resizable()
                            .frame(width: 170, height: 170, alignment: .leading)
                            .cornerRadius(5)
                        
                        Text(item.name)
                            .frame(maxWidth: 170, alignment: .leading)
                            .lineLimit(1)
                            .font(.headline)
                        
                        Text(item.description)
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

