//
//  CustomMealsTVCell.swift
//  MealsApp
//
//  Created by Артем Пашевич on 23.08.22.
//

import UIKit

class CustomMealsTVCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var feedback: CosmosView!
    @IBOutlet weak var subTitleLbl: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        feedback.updateOnTouch = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
