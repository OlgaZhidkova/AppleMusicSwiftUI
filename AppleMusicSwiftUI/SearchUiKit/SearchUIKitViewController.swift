//
//  SearchUIKitViewController.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 10.02.2022.
//

import UIKit

class SearchUIKitViewController: UIViewController {

    // MARK: - Properties
    
    private let searchController = UISearchController(searchResultsController: MusicViewController())
    var collectionView: UICollectionView!
    var items = searchCategories

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
        configureSearchController()
        setupCollectionView()
        
        collectionView.register(SectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeader.identifier)
        collectionView.register(SearchViewCell.self, forCellWithReuseIdentifier: SearchViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        searchController.searchBar.delegate = self
    }

    // MARK: - Settings
    
    private func setupNavigation() {
        navigationItem.title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
    
    private func configureSearchController() {
        searchController.searchResultsUpdater = MusicViewController()
        searchController.obscuresBackgroundDuringPresentation = false
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true
        searchController.searchBar.setValue("Отменить", forKey: "cancelButtonText")
        searchController.searchBar.placeholder = "Артисты, песни, тексты и др."
        searchController.searchBar.showsScopeBar = true
        searchController.searchBar.scopeButtonTitles = ["Apple Music", "Ваша Медиатека"]
        searchController.automaticallyShowsScopeBar = true
    }

    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 220, right: 12)
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width / 2.2, height: UIScreen.main.bounds.width / 3.3)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.alwaysBounceVertical = true
        collectionView.isPagingEnabled = false
        view.addSubview(collectionView)
    }
}

extension SearchUIKitViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchViewCell.identifier, for: indexPath) as! SearchViewCell
        let item = items[indexPath.item]
        cell.configure(with: item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: SectionHeader.identifier,
            for: indexPath) as! SectionHeader
        header.configure()
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 50)
    }
}

extension SearchUIKitViewController: UISearchBarDelegate, UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}
