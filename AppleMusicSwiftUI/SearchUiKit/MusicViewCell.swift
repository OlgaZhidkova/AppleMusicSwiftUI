//
//  MusicViewCell.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 19.02.2022.
//

import UIKit

class MusicViewCell: UITableViewCell {
    
    static let identifire = "MusicViewCell"
    
    let image: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 5
        img.clipsToBounds = true
        return img
    }()
    
    let nameLabel: UILabel = {
        let lable = UILabel()
        lable.font = UIFont.boldSystemFont(ofSize: 20)
        lable.textColor = .black
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    let descriptionLabel: UILabel = {
       let lable = UILabel()
        lable.font = UIFont.boldSystemFont(ofSize: 14)
        lable.textColor = .gray
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    let containerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        return view
    }()
    
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        self.contentView.addSubview(image)
        containerView.addSubview(nameLabel)
        containerView.addSubview(descriptionLabel)
        self.contentView.addSubview(containerView)
        
    }
    
    private func setupLayout() {
        image.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant:10).isActive = true
        image.widthAnchor.constraint(equalToConstant:70).isActive = true
        image.heightAnchor.constraint(equalToConstant:70).isActive = true
        
        containerView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo:self.image.trailingAnchor, constant:10).isActive = true
        containerView.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor, constant:-10).isActive = true
        containerView.heightAnchor.constraint(equalToConstant:40).isActive = true
                
        nameLabel.topAnchor.constraint(equalTo:self.containerView.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo:self.containerView.trailingAnchor).isActive = true
                
        descriptionLabel.topAnchor.constraint(equalTo:self.nameLabel.bottomAnchor).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
                
    }
    
    // MARK: - Configure
    
    func configure(with item: SmallPictureModel) {
        image.image = UIImage(named: item.image)
        nameLabel.text = item.name
        descriptionLabel.text = item.description
    }
    
    // MARK: - Initial
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: NSCoder())
    }

}

