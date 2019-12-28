//
//  Time.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/28.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import Foundation

class Time {
    let userName: String
    let timeIconImage: String
    let timeImage: String
    let timeLabel: String
    let goodCount: Int
    let commentCount: Int
    let shareCount: Int
    
    init(userName:String, timeIconImage:String, timeImage:String, timeLabel:String, goodCount: Int, commentCount:Int, shareCount: Int) {
        self.userName = userName
        self.timeIconImage = timeIconImage
        self.timeImage = timeImage
        self.timeLabel = timeLabel
        self.goodCount = goodCount
        self.commentCount = commentCount
        self.shareCount = shareCount
    }
}
