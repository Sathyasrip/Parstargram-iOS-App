//
//  PostTableViewCell.swift
//  Parstagram
//
//  Created by Sathya Sri Pasham on 10/4/20.
//  Copyright © 2020 Sathya Sri Pasham. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var captionLabel: UITextView!
    @IBOutlet weak var userNameLabel: UITextView!
    @IBOutlet weak var photoView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
