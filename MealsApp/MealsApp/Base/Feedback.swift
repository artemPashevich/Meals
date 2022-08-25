//
//  Feedback.swift
//  MealsApp
//
//  Created by Артем Пашевич on 25.08.22.
//

import Foundation

struct Feedback {
    
    private let date = Date()
    
    let comment: String
    
    var dateString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        return dateFormatter.string(from: date)
    }
    
}
