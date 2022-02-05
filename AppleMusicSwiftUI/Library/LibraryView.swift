//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 19.01.2022.
//

import SwiftUI

struct LibraryView: View {
    @State var showOptions = false
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView(.vertical, showsIndicators: false) {
                    if showOptions {
                        LibraryListView()
                            .transition(.asymmetric(
                                insertion: .scale,
                                removal: .opacity))
                            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .top)
                    }
                    else {
                        VStack {
                            Text("Ищете свою музыку?")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(.bottom, 1)
                                
                            Text("Здесь появится купленная Вами в iTunes Store музыка.")
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 50)
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                    }
                }
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: Button(action: {
                withAnimation {
                showOptions.toggle()
                }
            }) {
                showOptions ? Text("Готово") : Text("Править")
            })
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
