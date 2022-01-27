//
//  TabBar.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 28.01.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            
                LibraryView()
               
            
            .tabItem {
                Image("music")
                Text("Медиатека")
            }
            
            Text("Здесь будет Радио")
            .tabItem {
                Image(systemName: "dot.radiowaves.left.and.right")
                Text("Радио")
            }
            
            Text("Здесь будет Поиск")
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Поиск")
            }
        }
        .accentColor(.red)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
