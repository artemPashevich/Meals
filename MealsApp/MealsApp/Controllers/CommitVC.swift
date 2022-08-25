//
//  CommitVC.swift
//  MealsApp
//
//  Created by Артем Пашевич on 25.08.22.
//

import UIKit

class CommitVC: UIViewController {

    @IBOutlet weak var textViewFeedback: UITextView!
    @IBOutlet weak var errorLbl: UILabel!
    @IBOutlet weak var commentBtn: UIButton!
    
    var indexPath: Int!
    
    @IBAction func saveComment(_ sender: UIButton) {
        MealsData.shared.meals[indexPath].comments.append(textViewFeedback.text)
        self.dismiss(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewFeedback.delegate = self
        textViewFeedback.layer.borderColor = UIColor.black.cgColor
        textViewFeedback.layer.borderWidth = 1.0
        textViewFeedback.layer.cornerRadius = 15.0
    }
    
}

    
extension CommitVC: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView == textViewFeedback {
            let isCountEnough = textView.text.count > 20
            commentBtn.isEnabled = isCountEnough
            errorLbl.isHidden = isCountEnough
        }
        return true
    }
}



