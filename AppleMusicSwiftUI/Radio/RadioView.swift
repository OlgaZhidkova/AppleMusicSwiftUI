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
                HighlightsView(items: selectedStatiions)

                Text("Станции")
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                VerticalMusicListView(items: radioStations)
            }
            .padding(.bottom, Metric.playerHeight)
            .navigationTitle("Радио")
        }
    }
}

extension RadioView {
    enum Metric {
        static let playerHeight: CGFloat = 80
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
