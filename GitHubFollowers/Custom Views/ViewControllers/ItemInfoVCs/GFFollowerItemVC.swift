//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Алексей Попов on 02.10.2024.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(infoItemType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(infoItemType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
