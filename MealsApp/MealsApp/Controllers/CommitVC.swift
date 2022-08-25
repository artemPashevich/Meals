//
//  CommitVC.swift
//  MealsApp
//
//  Created by Артем Пашевич on 25.08.22.
//

import UIKit

class CommitVC: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var errorLbl: UILabel!
    
    
    @IBAction func saveComment(_ sender: UIButton) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        
    }
    
}

    
extension CommitVC: UITextViewDelegate {
        
        func textView(_ textV: UITextView, range: NSRange, text: String) -> Bool {
            if textV == textView {
                let isCountEnough = textV.text.count > 20
                
            }
            return true
        }
        
        
    }



