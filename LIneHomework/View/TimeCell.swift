//
//  TimeCell.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/28.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import UIKit

class TimeCell: UITableViewCell {

    @IBOutlet weak var timeIconImageView: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var timeImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var goodCount: UILabel!
    @IBOutlet weak var commentCount: UILabel!
    @IBOutlet weak var shareCount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        timeIconImageView.contentMode = .scaleAspectFill
        timeIconImageView.clipsToBounds = true
        timeIconImageView.layer.cornerRadius = timeIconImageView.frame.height / 2.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
