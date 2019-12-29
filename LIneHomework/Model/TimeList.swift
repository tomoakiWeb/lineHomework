//
//  TimeList.swift
//  LIneHomework
//
//  Created by 三浦　知明 on 2019/12/28.
//  Copyright © 2019 三浦　知明. All rights reserved.
//

import Foundation

class TimeList {
    var list = [Time]()
    init() {
        list.append(Time(userName: "Cat", timeIconImage: "cat", timeImage:"catFood" , timeLabel: "めちゃ美味しい", goodCount: 5, commentCount: 2, shareCount: 1))
        list.append(Time(userName: "Liam", timeIconImage: "liam", timeImage: "pcDesk", timeLabel: "作業中", goodCount: 10, commentCount: 5, shareCount: 3))
        list.append(Time(userName: "Jack", timeIconImage: "jack", timeImage: "hospital", timeLabel: "病院なう", goodCount: 3, commentCount: 2, shareCount: 1))
    }
}
