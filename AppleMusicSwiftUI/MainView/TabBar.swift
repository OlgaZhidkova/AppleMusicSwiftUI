//
//  TabBar.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 28.01.2022.
//

import SwiftUI

struct TabBar: View {
    
    @State var expand = false
    @Namespace var animation
    
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
                
//                SearchView()
                SearchUIKitView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            }
            .accentColor(.red)
            
            Spacer()
            
            PlayerView(animation: animation, expand: $expand)
                
        })
        .ignoresSafeArea(.keyboard)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
