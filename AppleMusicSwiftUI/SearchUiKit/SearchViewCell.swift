//
//  SearchViewCell.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 10.02.2022.
//

import UIKit

class SearchViewCell: UICollectionViewCell {
    static let identifier = "SearchViewCell"
    
    var imageView: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 5
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(imageView)
        
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with item: SearchCategoryModel) {
        self.imageView.image = UIImage(named: item.image)
    }
}

