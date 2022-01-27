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
            VStack {
                if showOptions {
                    LibraryListView()
                        .transition(.asymmetric(insertion: .scale, removal: .opacity))
                } else {
                    Text("Ищете свою музыку?")
                        .font(.headline)
                        .padding(.bottom, 7.0)

                    Text("Здесь появится купленная Вами в iTunes Store музыка.")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 70.0)
                }
            }
            
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing:
                                    Button(
                                    action: { withAnimation {
                                            showOptions.toggle()
                                            }
                                        }) {
                                            if showOptions {
                                                Text("Готово")
                                            } else {
                                                Text("Править")
                                            }
                                        })
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
