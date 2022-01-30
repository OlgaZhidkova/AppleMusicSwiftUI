//
//  TabBar.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 28.01.2022.
//

import SwiftUI

struct TabBar: View {
//    init() {
//        UITabBar.appearance().backgroundColor = UIColor.systemGray6
//      }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                LibraryView()
                .tabItem {
                    Image("music")
                    Text("Медиатека")
                }
                
                RadioView()
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
