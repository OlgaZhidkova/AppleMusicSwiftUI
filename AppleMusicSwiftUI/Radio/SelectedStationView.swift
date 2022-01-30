//
//  StationView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 29.01.2022.
//

import SwiftUI

struct SelectedStationView: View {
    @State var stations = selectedStatiions

    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(stations, id: \.self) { station in
                        VStack(spacing: 0) {
                            Divider()
                            Spacer()
                            Text(station.type)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.secondary)
                                .font(.caption)
                            Text(station.name)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.title3)
                            Text(station.description)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.secondary)
                                .font(.title3)
                            Spacer()
                            Image(station.image)
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: geometry.size.width)
                                .cornerRadius(5)
                            Spacer()
                            Divider()
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .frame(height: UIScreen.main.bounds.height * 0.38)
    }
}


struct StationView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedStationView()
    }
}
