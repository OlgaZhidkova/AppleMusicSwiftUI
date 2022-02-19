//
//  SectionHeader.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 19.02.2022.
//

import UIKit

class SectionHeader: UICollectionReusableView {
    static let identifier = "SectionHeader"
    
    private let headerLabel: UILabel = {
        let lable = UILabel()
        lable.text = "Поиск по категориям"
        lable.textAlignment = .left
        lable.font = .systemFont(ofSize: 22, weight: .semibold)
        lable.textColor = .black
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private let separator: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupLayout() {
        NSLayoutConstraint.activate([
        separator.bottomAnchor.constraint(equalTo: headerLabel.topAnchor, constant: -7),
        separator.heightAnchor.constraint(equalTo: headerLabel.heightAnchor, multiplier: 0.02),
        separator.widthAnchor.constraint(equalToConstant: frame.size.width - 24),
        separator.centerXAnchor.constraint(equalTo: centerXAnchor),
        
        headerLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        headerLabel.widthAnchor.constraint(equalToConstant: frame.size.width - 24),
        headerLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func configure() {
        addSubview(separator)
        addSubview(headerLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayout()
    }
}
