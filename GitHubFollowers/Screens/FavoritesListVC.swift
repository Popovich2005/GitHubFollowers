//
//  FavoritesListVC.swift
//  GitHubFollowers
//
//  Created by Алексей Попов on 01.08.2024.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let followers):
                print(followers)
            case .failure(let error):
                break
            }
        }
    }

}
