//
//  ContentView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 19.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LibraryView()
            .tabItem {
                Image("music")
                Text("Медиатека")
            }
            
            Text("Радио")
            .tabItem {
                Image(systemName: "dot.radiowaves.left.and.right")
                Text("Радио")
            }
            
            Text("Поиск")
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Поиск")
            }
        }
        .accentColor(.red)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
