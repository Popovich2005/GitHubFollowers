//
//  GFEmptyStateView.swift
//  GitHubFollowers
//
//  Created by Алексей Попов on 21.08.2024.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let massageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()

    override init(frame: CGRect) {
        super .init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        massageLabel.text = message
        configure()
    }
    
    private func configure() {
        addSubview(massageLabel)
        addSubview(logoImageView)
        
        massageLabel.numberOfLines = 3
        massageLabel.textColor = .secondaryLabel
        
        logoImageView.image = UIImage(named: "empty-state-logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            massageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            massageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            massageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            massageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            logoImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8),
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.5),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 200),
            logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 140)
        ])
        
    }
}
