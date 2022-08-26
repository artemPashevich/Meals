//
//  Feedback.swift
//  MealsApp
//
//  Created by Артем Пашевич on 25.08.22.
//

import Foundation

struct DateComment {
    
    private let date = Date()
    
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.dateFormat = "MM-dd-yyyy"
        return dateFormatter.string(from: date)
    }
    
}
