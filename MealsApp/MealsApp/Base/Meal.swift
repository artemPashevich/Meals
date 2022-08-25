//
//  Meal.swift
//  MealsApp
//
//  Created by Артем Пашевич on 24.08.22.
//

import UIKit

struct Meal {
    let name: String
    let price: Double
    let image: UIImage?
    
    var feedBacks: [Double] = []
    
    var ratingBar: Double {
        if let rating = rating {
            return rating
        } else {
            return 0
        }
    }
    
    
   private var rating: Double? {
       if feedBacks.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for rew in feedBacks {
                sum += rew
            }
            return sum / Double(feedBacks.count)
        }
    }
    

    
}
