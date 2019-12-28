//
//  HomeCell.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/24.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {


    @IBOutlet weak var homeIconImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        homeIconImageView.contentMode = .scaleAspectFill
        homeIconImageView.clipsToBounds = true
        homeIconImageView.layer.cornerRadius = homeIconImageView.frame.height / 2.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
