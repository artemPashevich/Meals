//
//  DitailMealsVC.swift
//  MealsApp
//
//  Created by Артем Пашевич on 24.08.22.
//

import UIKit

class DitailMealsVC: UIViewController {
    
    var indexPath: Int!
    var meal: Meal {
        MealsData.shared.meals[indexPath]
    }

    @IBOutlet weak var imageMeal: UIImageView!
    @IBOutlet weak var nameMeal: UILabel!
    @IBOutlet weak var priceMeal: UILabel!
    @IBOutlet weak var feedbackView: CosmosView!
    @IBOutlet weak var viewReviewOutlet: UIButton!
    @IBOutlet weak var leaveReviewOutlet: UIButton!
    
    func updatefeedback() {
        feedbackView.didFinishTouchingCosmos = { rating in
            MealsData.shared.meals[self.indexPath].feedBacks.append(rating)
        }
    }
    
    @IBAction func viewReview(_ sender: UIButton) {
       
    }
    
    @IBAction func leaveReview(_ sender: UIButton) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewReviewOutlet.isEnabled = !meal.comments.isEmpty
    }
    
    func updateView() {
        imageMeal.image = meal.image
        title = meal.name
        nameMeal.text = meal.name
        priceMeal.text = String(meal.price) + "$"
        feedbackView.rating = meal.ratingBar
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        feedbackView.didFinishTouchingCosmos = { rating in
            MealsData.shared.meals[self.indexPath].feedBacks.append(rating)
            print(rating)
        }
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cv = segue.destination as? CommitVC {
            cv.indexPath = indexPath
        }
        
        if let cv = segue.destination as? AllCommentTVC {
            cv.indexPath = indexPath
        }
        
    }

}
