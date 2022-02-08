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
    
    @State private var searchText = ""
    
    @State private var isEditing = false
    
    @State private var selectedIndex = 0
    
    @State var music = searchMusic
    
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: true) {
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
            .navigationBarTitle("Поиск")
        }
        // Search field
        .searchable(text: $searchText,
                    prompt: "Артисты, песни, тексты и др.") {
            
            Picker("Search in", selection: $selectedIndex) {
                Text("Apple Music").tag(0)
                Text("Ваша Медиатека").tag(1)
                }
                .pickerStyle(.segmented)
                .labelsHidden()
            
            VStack {
                ForEach(music) { music in
                    SearchRowView(item: music)
                }
            }
            .onChange(of: searchText) { searchText in
                if searchText != "" {
                    music = searchMusic.filter{ $0.name.contains(searchText)}
                } else {
                    music = searchMusic
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
