//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 19.01.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Ищете свою музыку?")
                    .font(.headline)
                    .padding(.bottom, 7.0)
                    
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 70.0)
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing:
                                    NavigationLink(
                                        destination: Text("List"),
                                        label: {
                                            Text("Править")
                                        })
            )
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
