//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 28.01.2022.
//

import SwiftUI

struct PlayerView: View {
    var animation: Namespace.ID
    @Binding var expand: Bool
    
    var height = UIScreen.main.bounds.height / 3
    
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var volume: CGFloat = 0
    
    @State var offset: CGFloat = 0
    
    @State var isPlaying = true
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? Metric.capsuleWidth : 0, height: expand ? Metric.capsuleHeight : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            
            // mini Player
            HStack(spacing: Metric.regularSpacing) {
                if expand {
                    Spacer()
                }
                
                Image("elton")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : Metric.imageSize, height: expand ? height : Metric.imageSize)
                    .cornerRadius(7)
                    .shadow(radius: 2)
                
                if !expand {
                    Text("Cold Heart (PNAU)")
                        .font(.body)
                        .foregroundColor(.primary)
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer()
                
                if !expand {
                    Button(action: {
                            isPlaying.toggle()
                    },
                            label: {
                        isPlaying ?
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                        :
                        Image(systemName: "pause.fill")
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
            }
            .padding(.top, 10)
            .padding(.horizontal)
            
            // full screen Player
            VStack(spacing: Metric.regularSpacing) {
                Spacer()
                
                HStack {
                    if expand {
                        Text("Cold Heart")
                            .font(.title2).bold()
                            .foregroundColor(.primary)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                .padding(.top, 20)
                
                HStack {
                    Capsule()
                        .fill(Color.secondary.opacity(0.2))
                        .frame(height: Metric.capsuleHeight)
                }
                .padding()
                
                HStack(spacing: Metric.buttonsSpacing) {
                    Button(action: {},
                            label: {
                        Image(systemName: "backward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.secondary)
                        }
                    )
                    
                    Button(action: {
                            isPlaying.toggle()
                    },
                            label: {
                        isPlaying ?
                        Image(systemName: "play.fill")
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                        :
                        Image(systemName: "pause.fill")
                            .font(.largeTitle)
                            .foregroundColor(.primary)

                        }
                    )
                      
                    Button(action: {},
                            label: {
                        Image(systemName: "forward.fill")
                            .font(.largeTitle)
                            .foregroundColor(.secondary)
                        }
                    )
                }
                
                Spacer()
                
                HStack(spacing: Metric.regularSpacing) {
                    Image(systemName: "speaker.fill")
                        .foregroundColor(.secondary)
                    Slider(value: $volume)
                    Image(systemName: "speaker.wave.2.fill")
                        .foregroundColor(.secondary)
                }
                .padding()
                
                HStack(spacing: Metric.buttonsSpacing) {
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding(.bottom, safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
            }
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        .frame(maxHeight: expand ? .infinity : Metric.playerHeight)
        .ignoresSafeArea(.keyboard)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            }
            .onTapGesture {
                withAnimation(.spring()) {
                    expand = true
                }
            }
        )
        .cornerRadius(expand ? 20 : 0)
        .offset(y: expand ? 0 : Metric.yOffset)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onended(value: )).onChanged(onchanged(value: )))
        .ignoresSafeArea()
        
    }
    
    // pull down Player
    func onchanged(value: DragGesture.Value) {
        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }
    }
    
    func onended(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95, blendDuration: 0.95)) {
            if value.translation.height > height {
                expand = false
            }
            offset = 0
        }
    }
}

extension PlayerView {
    enum Metric {
        static let imageSize: CGFloat = 55
        static let playerHeight: CGFloat = 80
        static let buttonsSpacing: CGFloat = 70
        static let regularSpacing: CGFloat = 15
        static let yOffset: CGFloat = -48
        static let capsuleWidth: CGFloat = 60
        static let capsuleHeight: CGFloat = 4
    }
}
