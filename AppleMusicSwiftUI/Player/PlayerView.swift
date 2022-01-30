//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 28.01.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 15) {
                Image("elton")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(7)
                    .shadow(radius: 2)
                   
                Text("Cold Heart (PNAU)")
                    .font(.body)
                    .foregroundColor(.primary)
                 
                Spacer(minLength: 5)
                
                Button(action: {},
                       label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                    }
                )
                
                Button(action: {},
                       label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.secondary)
                    }
                )
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(BlurView())
//            .background(Color(UIColor.systemGray6).opacity(0.99))
            
            Divider()
        }
        .frame(height: 80)
        .offset(y: -45)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
