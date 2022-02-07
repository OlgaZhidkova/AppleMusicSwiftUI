//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 01.02.2022.
//

import SwiftUI

struct SearchView: View {
    @State var categories = searchCategories
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                Divider()

                Text("Поиск по категориям")
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                LazyVGrid(columns: columns) {
                    ForEach(categories, id: \.self) { category in
                        NavigationLink(destination:
                                        SearchDetailView(category: category)
                                        .navigationTitle("")
                                        .navigationBarTitleDisplayMode(.inline)
                        ) {
                            Image(category.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170, alignment: .leading)
                                .cornerRadius(5)
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 80)
            .navigationTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
