//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Алексей Попов on 03.10.2024.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
