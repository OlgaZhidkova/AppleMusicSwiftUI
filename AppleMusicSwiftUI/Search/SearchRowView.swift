//
//  SearchRowView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 08.02.2022.
//

import SwiftUI

struct SearchRowView: View {
    var item: SmallPictureModel
    var body: some View {
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
        }
    }
}
