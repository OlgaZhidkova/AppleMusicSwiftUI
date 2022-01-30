//
//  RadioStationView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 29.01.2022.
//

import SwiftUI

struct RadioStationView: View {
    
    @State var stations = radioStations
    
    var columns = [
        GridItem(.flexible(), alignment: .leading)
        ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(stations, id: \.self) { station in
                HStack {
                    Image(station.image)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .cornerRadius(5)
                    VStack {
                        Text(station.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.headline)
                        Text(station.description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                }
                Divider()
            }
            .padding(.horizontal)
        }
    }
}

struct RadioStationView_Previews: PreviewProvider {
    static var previews: some View {
        RadioStationView()
    }
}
