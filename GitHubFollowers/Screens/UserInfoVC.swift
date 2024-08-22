//
//  UserInfoVC.swift
//  GitHubFollowers
//
//  Created by Алексей Попов on 22.08.2024.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        print(username)

    }
    
   @objc func dismissVC() {
        dismiss(animated: true)
    }
}
