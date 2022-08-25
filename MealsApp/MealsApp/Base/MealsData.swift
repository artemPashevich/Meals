//
//  MealsData.swift
//  MealsApp
//
//  Created by Артем Пашевич on 24.08.22.
//

import UIKit


class MealsData {
    
    static let shared = MealsData()
    
    var meals: [Meal]
    
    private init () {
        meals = [Meal(name: "Pizza", price: 5.99, image: #imageLiteral(resourceName: "20150918160532-pizza")),
                 Meal(name: "Sushi", price: 10.99, image: #imageLiteral(resourceName: "sushi-polesnie-1")),
                 Meal(name: "Carbonara", price: 3.99, image: #imageLiteral(resourceName: "Italian-enough-pasta-carbonara-2"))]
    }
    
     
    
}
