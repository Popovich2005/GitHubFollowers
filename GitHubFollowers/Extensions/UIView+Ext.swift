//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Алексей Попов on 14.10.2024.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
