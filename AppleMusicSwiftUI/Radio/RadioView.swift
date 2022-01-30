//
//  RadioView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 29.01.2022.
//

import SwiftUI

struct RadioView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                SelectedStationView()

                Text("Станции")
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                RadioStationView()
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
