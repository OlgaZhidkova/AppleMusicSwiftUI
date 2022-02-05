//
//  TabBar.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 28.01.2022.
//

import SwiftUI

struct TabBar: View {
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                LibraryView()
                .tabItem {
                    Image(systemName: "music.note.house.fill")
                    Text("Медиатека")
                }
                
                RadioView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
                
                SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            }
            .accentColor(.red)
            
            Spacer()
            
            PlayerView()
        })
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
