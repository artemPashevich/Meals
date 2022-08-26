//
//  CommentCustomTVCell.swift
//  MealsApp
//
//  Created by Артем Пашевич on 26.08.22.
//

import UIKit

class CommentCustomTVCell: UITableViewCell {

    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var comment: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
