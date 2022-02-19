//
//  SearchUIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 10.02.2022.
//

import UIKit
import SwiftUI

struct SearchUIKitView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let searchViewController = SearchUIKitViewController()
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)

        return searchNavigationController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    
    }
}
