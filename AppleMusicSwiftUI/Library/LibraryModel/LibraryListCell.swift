//
//  OptionCell.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 20.01.2022.
//

import SwiftUI

struct LibraryListCell: View {
    @State var option: LibraryListModel
    
    var body: some View {
        HStack {
            Image(systemName: option.icon)
                .frame(width: 20, height: 20)
                .foregroundColor(.red)
            Text(option.title)
        }
    }
}

