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
        GridItem(.fixed(300))
    ]
    
    var body: some View {
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
                            .frame(width: 360, height: 240)
                            .cornerRadius(5)
                        Spacer()
                        Divider()
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct StationView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedStationView()
    }
}
