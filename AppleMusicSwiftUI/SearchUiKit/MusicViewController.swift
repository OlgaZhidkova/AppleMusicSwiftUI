//
//  MusicViewController.swift
//  AppleMusicSwiftUI
//
//  Created by Ольга on 19.02.2022.
//

import UIKit

class MusicViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var items = searchMusic
    var searchResults = [SmallPictureModel]()
    private var isFiltering = false
    
    let musicTableView = UITableView()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setupLayout()
        
        musicTableView.dataSource = self
        musicTableView.delegate = self
        musicTableView.register(MusicViewCell.self, forCellReuseIdentifier: MusicViewCell.identifire)
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        view.addSubview(musicTableView)
    }
    
    private func setupLayout() {
        musicTableView.translatesAutoresizingMaskIntoConstraints = false
        musicTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        musicTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        musicTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        musicTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    // MARK: - DataSourse methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numberOfItems: Int = Int()
        if isFiltering {
            numberOfItems = searchResults.count
        } else {
            numberOfItems = items.count
        }
        return numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MusicViewCell.identifire, for: indexPath) as! MusicViewCell
        var item = SmallPictureModel(image: "", name: "", description: "")
        if isFiltering {
            item = searchResults[indexPath.row]
        } else {
            item = items[indexPath.row]
        }
        cell.configure(with: item)
        return cell
    }
    
    // MARK: - Delegate methods
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension MusicViewController: UISearchResultsUpdating, UISearchBarDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
        isFiltering = true
        guard let searchText = searchController.searchBar.text else { return }
        searchResults = items.filter{ $0.name.contains(searchText) }
        musicTableView.reloadData()
    }
}

