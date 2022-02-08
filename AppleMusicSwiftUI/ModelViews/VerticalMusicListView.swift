//
//  RadioStationView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 29.01.2022.
//

import SwiftUI

struct VerticalMusicListView: View {
    
    @State var items = [SmallPictureModel]()
    
    var columns = [
        GridItem(.flexible(), alignment: .leading)
        ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(items, id: \.self) { item in
                HStack {
                    Image(item.image)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .cornerRadius(5)
                    VStack {
                        Text(item.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                        Text(item.description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                }
                Divider()
            }
            .padding(.horizontal)
        }
    }
}

